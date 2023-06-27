//
//  CashPaymentStrategy.swift
//  3homework6m
//
//  Created by mavluda on 27/6/23.
//

import Foundation

class CashPaymentStrategy: PaymentStrategy{
    weak var delegate: CashChangingDelegate? = nil
    
    init(delegate: CashChangingDelegate) {
        self.delegate = delegate
    }
    
    func makePayment(amount: Int, account: Account, currency: Currencies) -> Bool{
        switch currency {
        case .usd:
            if account.usdCash >= amount{
                delegate?.changeAmount(amountCash: amount, currency: currency)
                print("\(amount)\(currency.rawValue) оплачено наличными. Остаток в кошельке: \(account.usdCash)")
                return true
            }else{
                print("Недостаточно средств.")
                return false
            }
        case .eur:
            if account.eurCash >= amount{
                delegate?.changeAmount(amountCash: amount, currency: currency)
                print("\(amount)\(currency.rawValue) оплачено наличными. Остаток в кошельке: \(account.eurCash)")
                return true
            }else{
                print("Недостаточно средств.")
                return false
            }
        case .rub:
            if account.rubCash >= amount{
                delegate?.changeAmount(amountCash: amount, currency: currency)
                print("\(amount)\(currency.rawValue) оплачено наличными. Остаток в кошельке: \(account.rubCash)")
                return true
            }else{
                print("Недостаточно средств.")
                return false
            }
        case .kgs:
            if account.kgsCash >= amount{
                delegate?.changeAmount(amountCash: amount, currency: currency)
                print("\(amount)\(currency.rawValue) оплачено наличными. Остаток в кошельке: \(account.kgsCash)")
                return true
            }else{
                print("Недостаточно средств.")
                return false
            }
        }
    }
}
