//
//  TransactionError.swift
//  Stellar
//
//  Created by Kalvin Loc on 1/28/18.
//  Copyright © 2018 Kalvin Loc. All rights reserved.
//

import Foundation

class TransactionError: Error, Response {

    let type: URL
    let status: Int

    let title: String
    let detail: String

    let instance: String

}
