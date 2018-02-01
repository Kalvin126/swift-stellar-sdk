//
//  HorizonEndpoint.swift
//  Stellar
//
//  Created by Kalvin Loc on 1/28/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Foundation

extension Horizon {

    public enum Endpoint {

        case endpoint(url: String)

        public static var testNet: Endpoint = .endpoint(url: "https://horizon-testnet.stellar.org")
        public static var `public`: Endpoint = .endpoint(url: "https://horizon.stellar.org")
    }

}

extension Horizon.Endpoint {

    var url: URL {
        guard case let Horizon.Endpoint.endpoint(rawURL) = self else {
            fatalError(#function + ": Unable to get URL")
        }

        guard let url = URL(string: rawURL) else {
            fatalError(#function + ": Invalid URL \(rawURL)")
        }

        return url
    }

    public var isSecure: Bool {
        return url.scheme == "https"
    }

}
