//
//  MetricsKeys.swift
//  Stellar
//
//  Created by Kalvin Loc on 1/29/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Foundation

enum ValueKey: String, CodingKey {
    case value
}

enum RateKeys: String, CodingKey {

    case rate15m    = "15m.rate"
    case rate1m     = "1m.rate"
    case rate5m     = "5m.rate"

    case count
    case meanRate   = "mean.rate"

}

enum ExtendedRateKeys: String, CodingKey {

    case rate15m    = "15m.rate"
    case rate1m     = "1m.rate"
    case rate5m     = "5m.rate"

    case percent75          = "75%"
    case percent95          = "95%"
    case percent99          = "99%"
    case percent99point9    = "99.9%"

    case count
    case max
    case mean
    case meanRate           = "mean.rate"
    case median
    case min
    case standardDeviation  = "stddev"

}
