//
//  Badge.swift
//  Landmarks
//
//  Created by Andrei Korikov on 03.10.2021.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0 ..< 8) { item in
            RotatedBadgeSymbol(
                angle: .degrees(Double(item) / Double(8)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geo in
                badgeSymbols
                    .scaleEffect(0.25, anchor: .top)
                    .position(
                        x: geo.size.width / 2.0,
                        y: (3.0 / 4.0) * geo.size.height
                    )
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
