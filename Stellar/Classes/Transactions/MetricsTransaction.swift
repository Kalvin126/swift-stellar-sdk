//
//  MetricsTransaction.swift
//  Stellar
//
//  Created by Kalvin Loc on 1/28/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Foundation

struct MetricsTransaction: Transaction {

    typealias ResponseType = Metrics

    // MARK: Transaction

    let horizon: Horizon

    let path: String = "/metrics"

}
