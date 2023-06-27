//
//  PaymentStrategy.swift
//  3homework6m
//
//  Created by mavluda on 27/6/23.
//

import Foundation

protocol PaymentStrategy{
    func makePayment(amount: Int, account: Account, currency: Currencies) -> Bool
}
