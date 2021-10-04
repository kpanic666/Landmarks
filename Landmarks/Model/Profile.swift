//
//  Profile.swift
//  Landmarks
//
//  Created by Andrei Korikov on 04.10.2021.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "avkorikov")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "😎"
        case autumn = "🍁"
        case winter = "❄️"
        
        var id: String { self.rawValue }
    }
}
