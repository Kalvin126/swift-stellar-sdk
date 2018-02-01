//
//  TransactionError.swift
//  Stellar
//
//  Created by Kalvin Loc on 1/28/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Foundation

class TransactionError: Error, Response {

    public let type: URL
    public let status: Int

    public let title: String
    public let detail: String

    public let instance: String

}
