//
//  Sport.swift
//  UI testing
//
//  Created by Jason Wang on 29/11/22.
//

import Foundation
import SwiftUI
import CoreLocation


struct SportLogic{
    
    private (set) var sports: Array<Sport>

    init(){
        sports = Array<Sport>()
        sports = dataload("sportCategoryData.json")
    }
    
    var categories: [String: [Sport]] {
        Dictionary(
            grouping: sports,
            by: { $0.category.rawValue }
        )
    }

    struct Sport: Hashable, Codable, Identifiable {
        var id: Int
        var name: String
        var description: String
    //    var isFavorite: Bool
    //    var isFeatured: Bool

        var category: Category
        enum Category: String, CaseIterable, Codable {
            case ball = "Ball"
            case fitness = "Fitness"
            case outdoor = "Outdoor"
            case water = "Water"
            case others = "Others"
        }

        private var imageName: String
        var image: Image {
            Image(imageName)
        }

    }
    
}
