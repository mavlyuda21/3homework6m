//
//  Cashbox.swift
//  3homework6m
//
//  Created by mavluda on 27/6/23.
//

import Foundation

class Cashbox: PaymentStrategy{
    private var paymentStrategy: PaymentStrategy? = nil
    
    init(paymentStrategy: PaymentStrategy){
        self.paymentStrategy = paymentStrategy
    }
    
    func makePayment(amount: Int, account: Account, currency: Currencies) -> Bool{
        if paymentStrategy is CardPaymentStrategy{
            if paymentStrategy?.makePayment(amount: amount, account: account, currency: currency) == false{
                self.paymentStrategy = CashPaymentStrategy(delegate: account)
                self.paymentStrategy?.makePayment(amount: amount, account: account, currency: currency)
            }
        }else{
            if paymentStrategy?.makePayment(amount: amount, account: account, currency: currency) == false{
                self.paymentStrategy = CardPaymentStrategy()
                self.paymentStrategy?.makePayment(amount: amount, account: account, currency: currency)
            }
        }
        return true
    }
}
