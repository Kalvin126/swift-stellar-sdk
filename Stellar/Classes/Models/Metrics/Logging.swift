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

    struct Rates: Decodable {

        let rate15m: Double
        let rate1m: Double
        let count: UInt
        let meanRate: Double

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: RateKeys.self)

            self.rate15m = try container.decode(Double.self, forKey: .rate15m)
            self.rate1m = try container.decode(Double.self, forKey: .rate1m)
            self.count = try container.decode(UInt.self, forKey: .count)
            self.meanRate = try container.decode(Double.self, forKey: .meanRate)
        }

    }

    struct ExtendedRates: Decodable {

        let rate15m: Double
        let rate1m: Double
        let count: UInt
        let meanRate: Double

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: RateKeys.self)

            self.rate15m = try container.decode(Double.self, forKey: .rate15m)
            self.rate1m = try container.decode(Double.self, forKey: .rate1m)
            self.count = try container.decode(UInt.self, forKey: .count)
            self.meanRate = try container.decode(Double.self, forKey: .meanRate)
        }

    }

    let debug: Rates
    let error: Rates
    let info: Rates
    let panic: Rates
    let warning: Rates

}
