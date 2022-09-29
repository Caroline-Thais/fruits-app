//
//  FruitsModel.swift
//  Fructus
//
//  Created by Thaís Caroline Silva on 28/09/22.
//

import SwiftUI

//FRUITS DATA MODAL
struct Fruit: Identifiable {
    var id = UUID()//universal identifier
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
