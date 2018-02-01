//
//  MetricsTransaction.swift
//  Stellar
//
//  Created by Kalvin Loc on 1/28/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Foundation

public struct MetricsTransaction: Transaction {

    public typealias ResponseType = Metrics

    // MARK: Transaction

    public let horizon: Horizon

    public let path: String = "/metrics"

}
