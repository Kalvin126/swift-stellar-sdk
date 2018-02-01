//
//  Logging.swift
//  Stellar
//
//  Created by Kalvin Loc on 1/29/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Foundation

public struct Logging {

    enum CodingKeys: String, CodingKey {

        case debug = "logging.debug"
        case error = "logging.error"
        case info = "logging.info"
        case panic = "logging.panic"

    }

    public struct Rates: Decodable {

        public let rate15m: Double
        public let rate1m: Double
        public let count: UInt
        public let meanRate: Double

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: RateKeys.self)

            self.rate15m = try container.decode(Double.self, forKey: .rate15m)
            self.rate1m = try container.decode(Double.self, forKey: .rate1m)
            self.count = try container.decode(UInt.self, forKey: .count)
            self.meanRate = try container.decode(Double.self, forKey: .meanRate)
        }

    }

    public struct ExtendedRates: Decodable {

        public let rate15m: Double
        public let rate1m: Double
        public let count: UInt
        public let meanRate: Double

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: RateKeys.self)

            self.rate15m = try container.decode(Double.self, forKey: .rate15m)
            self.rate1m = try container.decode(Double.self, forKey: .rate1m)
            self.count = try container.decode(UInt.self, forKey: .count)
            self.meanRate = try container.decode(Double.self, forKey: .meanRate)
        }

    }

    public let debug: Rates
    public let error: Rates
    public let info: Rates
    public let panic: Rates
    public let warning: Rates

}
