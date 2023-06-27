//
//  main.swift
//  3homework6m
//
//  Created by mavluda on 27/6/23.
//

import Foundation

let account = Account(
    cardNumber: "4169 **** **** **** **42",
    usd: 100,
    eur: 300,
    rub: 200,
    kgs: 500,
    usdCash: 0,
    eurCash: 500,
    rubCash: 100,
    kgsCash: 500
)

let cashPS = CashPaymentStrategy(
    delegate: account)

dump(account)

let cashbox = Cashbox(paymentStrategy: cashPS)
if cashbox.makePayment(amount: 300,
                       account: account,
                       currency: Currencies.kgs){
    print("Операция прошла успешно")
}else{
    print("Ошибка системы")
}

dump(account)
