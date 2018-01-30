//
//  Metrics.swift
//  Stellar
//
//  Created by Kalvin Loc on 1/28/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Foundation

class Metrics: Response {

    enum CodingKeys: String, CodingKey {

        case goroutines
        case historyElderLedger     = "history.elder_ledger"
        case historyLatestLedger    = "history.latest_ledger"
        case historyOpenConnections = "history.open_connections"

        case loggingDebug   = "logging.debug"
        case loggingError   = "logging.error"
        case loggingInfo    = "logging.info"
        case loggingPanic   = "logging.panic"
        case loggingWarning = "logging.warning"
    }

    struct History {

        let elderLedger: UInt
        let latestLedger: UInt

        let openConnections: UInt

    }

    let goroutines: UInt

    let history: History
    let logging: Logging

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        let getValue = { (container: KeyedDecodingContainer<CodingKeys>, key: CodingKeys) -> UInt in
            return try container.nestedContainer(keyedBy: ValueKey.self, forKey: key).decode(UInt.self, forKey: .value)
        }

        self.goroutines = try getValue(container, .goroutines)

        // History

        let historyElderLedger = try getValue(container, .historyElderLedger)
        let historyLatestLedger = try getValue(container, .historyLatestLedger)
        let historyOpenConnections = try getValue(container, .historyOpenConnections)

        self.history = History(elderLedger: historyElderLedger, latestLedger: historyLatestLedger, openConnections: historyOpenConnections)

        // Logging
        let loggingDebug = try container.decode(Logging.Rates.self, forKey: .loggingDebug)
        let loggingError = try container.decode(Logging.Rates.self, forKey: .loggingError)
        let loggingInfo = try container.decode(Logging.Rates.self, forKey: .loggingInfo)
        let loggingPanic = try container.decode(Logging.Rates.self, forKey: .loggingPanic)
        let loggingWarning = try container.decode(Logging.Rates.self, forKey: .loggingWarning)


        self.logging = Logging(debug: loggingDebug, error: loggingError, info: loggingInfo, panic: loggingPanic, warning: loggingWarning)
    }

}
