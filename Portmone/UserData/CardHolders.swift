//  CardHolders.swift
//  Portmone
//
//  Created by Aleksej Shapran on 21.03.23

import Foundation

struct Card: Identifiable {
    
    var id = UUID().uuidString
    var cardHolderName: String
    var cardNumber: String
    var bank: String
    var money: Double
    var expiry: String
    
}


var cards: [Card] = [

    Card(cardHolderName: "ALIAKSEI SHAPRAN",
         cardNumber: "0123 4567 8901 2345",
         bank: "PRIORBANK",
         money: 100.20,
         expiry: "06/25"),
    Card(cardHolderName: "PALINA SHAPRAN",
         cardNumber: "0987 6543 2109 8765",
         bank: "PRIORBBANK",
         money: 267.98,
         expiry: "07/25")
    
]

