//
//  Transaction.swift
//  Stellar
//
//  Created by Kalvin Loc on 1/28/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Foundation

public protocol Transaction {
    associatedtype ResponseType: Response

    var horizon: Horizon { get }

    // MARK: Parameters

    var method: String { get }

    var path: String { get }
    var queryItems: [URLQueryItem]? { get }

}

// MARK: - Default implementation
extension Transaction {

    public var method: String { return "GET" }

    public var queryItems: [URLQueryItem]? { return nil }
}

// MARK: - Networking
extension Transaction {

    var urlComponents: URLComponents {
        var components = URLComponents()

        components.path = path
        components.queryItems = queryItems

        return components
    }

    public func send(completion: @escaping (ResponseType?, Error?) -> Void) {
        guard let url = urlComponents.url(relativeTo: horizon.endpoint.url) else {
            print(#function + ": Invalid URLComponents \(String(describing: urlComponents.url))")

            completion(nil, nil) // TODO: Pass an Error
            return
        }

        horizon.sendRequest(URLRequest(url: url)) { (data: Data?, urlResponse: URLResponse? , error: Error?) in
            guard let requestData = data else {
                print(#function + ": Failed to receive data response")

                // TODO: Error Handling
                return
            }
            let response = try? JSONDecoder().decode(ResponseType.self, from: requestData)

            completion(response, nil)
        }
    }

}
