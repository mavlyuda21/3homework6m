//
//  CurrencyManager.swift
//  3homework6m
//
//  Created by mavluda on 27/6/23.
//

import Foundation

class CurrencyManager{
    weak var delegate: CardSumChangingDelegate? = nil
    
    init(delegate: CardSumChangingDelegate){
        self.delegate = delegate
    }
    
    func substractCurrency(
        account: Account,
        from: Currencies,
        sum: Int
    ) -> Bool{
        var result: Bool
        switch from {
        case .usd:
            if getValue(
                account: account,
                currency: .usd
            ) >= sum{
                result = true
                delegate?.changeAmount(amount: sum, currency: from)
            }else{
                result = false
                print("Недостаточно средств на счете. Попробуйте другой метод оплаты")
            }
                case .eur:
            if getValue(
                account: account,
                currency: .eur
            ) >= sum{
                result = true
                delegate?.changeAmount(amount: sum, currency: from)
            }else{
                result = false
                print("Недостаточно средств на счете. Попробуйте другой метод оплаты")
            }
                case .rub:
            if getValue(
                account: account,
                currency: .rub
            ) >= sum{
                result = true
                delegate?.changeAmount(amount: sum, currency: from)
            }else{
                result = false
                print("Недостаточно средств на счете. Попробуйте другой метод оплаты")
            }
                case .kgs:
            if getValue(
                account: account,
                currency: .kgs
            ) >= sum{
                result = true
                delegate?.changeAmount(amount: sum, currency: from)
            }else{
                result = false
                print("Недостаточно средств на счете. Попробуйте другой метод оплаты")
            }
        }
        return result
        
    }
    
    private func getValue(
        account: Account,
        currency: Currencies
    ) -> Int{
        switch currency {
        case .usd:
            return account.usd
        case .eur:
            return account.eur
        case .rub:
            return account.rub
        case .kgs:
            return account.kgs
        }
    }
}
