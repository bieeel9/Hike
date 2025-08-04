//
//  CustomListRowView.swift
//  Hike
//
//  Created by Gabriel Jesus Santos on 03/08/25.
//

import SwiftUI

struct CustomListRowView: View {
    
    // MARK: - Properties
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            // Content
            if let rowContent {
                Text(rowContent)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
            } else if rowContent == nil,
                      let rowLinkDestination,
                      let rowLinkLabel,
                      let destinationURL = URL(string: rowLinkDestination) {
                Link(rowLinkLabel, destination: destinationURL)
                    .foregroundStyle(.blue)
                    .fontWeight(.heavy)
            }
            else {
                EmptyView()
            }
        } label: {
            // Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            rowLabel: "Linkedin",
            rowIcon: "link",
            rowContent: nil,
            rowTintColor: .blue,
            rowLinkLabel: "Gabriel J Santos",
            rowLinkDestination: "https://www.linkedin.com/in/gabriel-jesus-santos-3461a972/"
        )
    }
}
