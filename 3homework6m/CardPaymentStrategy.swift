//
//  CardPaymentStrategy.swift
//  3homework6m
//
//  Created by mavluda on 27/6/23.
//

import Foundation

class CardPaymentStrategy: PaymentStrategy{
    func makePayment(amount: Int, account: Account, currency: Currencies) -> Bool {
        let currencyManager = CurrencyManager(delegate: account)
        if currencyManager.substractCurrency(account: account, from: currency, sum: amount) == true{
            print("Средства с карты \(account.cardNumber) буду списаны в размере \(amount)\(currency.rawValue)")
            return true
        }else{
            return false
        }
    }
}
