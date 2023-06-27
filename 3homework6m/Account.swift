//
//  Account.swift
//  3homework6m
//
//  Created by mavluda on 27/6/23.
//

import Foundation

protocol CardSumChangingDelegate: AnyObject{
    func changeAmount(amount: Int, currency: Currencies)
}

protocol CashChangingDelegate: AnyObject{
    func changeAmount(amountCash: Int, currency: Currencies)
}

class Account{
    var cardNumber: String
    var usd,eur,rub,kgs : Int
    var usdCash, eurCash, rubCash, kgsCash: Int
    
    init(cardNumber: String, usd: Int, eur: Int, rub: Int, kgs: Int, usdCash: Int, eurCash: Int, rubCash: Int, kgsCash: Int) {
        self.cardNumber = cardNumber
        self.usd = usd
        self.eur = eur
        self.rub = rub
        self.kgs = kgs
        self.usdCash = usdCash
        self.eurCash = eurCash
        self.rubCash = rubCash
        self.kgsCash = kgsCash
    }
}

extension Account: CardSumChangingDelegate{
    func changeAmount(amount: Int, currency: Currencies) {
        switch currency {
        case .usd:
            usd -= amount
        case .eur:
            eur -= amount
        case .rub:
            rub -= amount
        case .kgs:
            kgs -= amount
        }
        print("Операция завершена. Со счета карты валюты *\(currency.rawValue)* было списано \(amount)\(currency.rawValue)")
    }
}

extension Account: CashChangingDelegate{
    func changeAmount(amountCash: Int, currency: Currencies) {
        switch currency {
        case .usd:
            usdCash -= amountCash
        case .eur:
            eurCash -= amountCash
        case .rub:
            rubCash -= amountCash
        case .kgs:
            kgsCash -= amountCash
        }
        
        print("Операция завершена. Наличные валюты *\(currency.rawValue)* было списано \(amountCash)\(currency.rawValue)")
    }
    
}

enum Currencies: String{
    case usd = "USD"
    case eur = "EUR"
    case rub = "RUB"
    case kgs = "KGS"
}
