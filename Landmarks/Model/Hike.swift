//
//  Hike.swift
//  Landmarks
//
//  Created by Andrei Korikov on 03.10.2021.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
    
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        Self.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
}
