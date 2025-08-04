//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Gabriel Jesus Santos on 02/08/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            
            // Mark: - 3. Depth
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // Mark: - 2. Light
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
            
            // Mark: - 1. Surface
            
            LinearGradient(
                colors: [
                    .colorGreenLight,
                    .colorGreenMedium
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
