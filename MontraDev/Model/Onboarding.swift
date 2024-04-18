//
//  Onboarding.swift
//  MontraDev
//
//  Created by MacBook Pro on 18/04/24.
//

import Foundation

struct Onboarding: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var title: String
    var description: String
    var  tag: Int
}

extension Onboarding {
    static let data: [Onboarding] = [
        Onboarding(image: "money", title: "Gain total control \nof your money", description: "Become your own money manager \nand make every cent count", tag: 0),
        
        Onboarding(image: "cash", title: "Know where your\nmoney goes", description: "Track your transaction easliy,\nwith categories and financial report", tag: 1),
        
        Onboarding(image: "plan", title: "Planning ahead", description: "Setup your budget for each category \nso you in control", tag: 2)
        
    ]
}



