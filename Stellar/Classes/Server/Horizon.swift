//
//  Horizon.swift
//  Stellar
//
//  Created by Kalvin Loc on 1/28/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Foundation

public final class Horizon {

    private lazy var session: URLSession = URLSession(configuration: .default)

    // MARK: Configuration

    public var endpoint: Endpoint {
        didSet {
            if allowUnsecureHTTP, !endpoint.isSecure {
                fatalError(#function + ": Cannot connect to insecure horizon server")
            }
        }
    }

    public let allowUnsecureHTTP: Bool

    // MARK: Init

    public init(endpoint: Endpoint, allowUnsecureHTTP: Bool = false) {
        self.endpoint = endpoint
        self.allowUnsecureHTTP = allowUnsecureHTTP

        if allowUnsecureHTTP, !endpoint.isSecure {
            fatalError(#function + ": Cannot connect to insecure horizon server")
        }
    }

}

// MARK: - Actions
extension Horizon {
    
    func sendRequest(_ request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        print("Sending: \(request)")

        let dataTask = session.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            completionHandler(data, response, error)
        }

        dataTask.resume()
    }

}

// MARK: - Builders
extension Horizon {

    var metrics: MetricsTransaction {
        return MetricsTransaction(horizon: self)
    }

}
