//
//  ApexPredator.swift
//  ApexPredators
//
//  Created by Vlad M on 01.07.2024.
//

import Foundation
import SwiftUI

struct ApexPredator: Decodable, Identifiable {
    let id: Int
    let name: String
    let type: PredatorType
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String
    
    var image: String {
        return name.lowercased().replacingOccurrences(of: " ", with: "")
    }
    
    struct MovieScene: Decodable {
        let id: Int
        let movie: String
        let sceneDescription: String
    }
    
    enum PredatorType: String, Decodable {
        case land
        case air
        case sea
        
        var background: Color {
            switch self {
            case .land:
                .brown
            case .air:
                .teal
            case .sea:
                .blue
            }
        }
    }
}
