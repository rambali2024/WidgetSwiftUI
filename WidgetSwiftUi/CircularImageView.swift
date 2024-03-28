//
//  CircularImageView.swift
//  WidgetSwiftUi
//
//  Created by Rambali Kumar on 28/03/24.
//

import SwiftUI

struct CircularImageView: View {
    var image : Image
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.purple,lineWidth: 5)
            )
            .shadow(radius: 10)
    }
}

#Preview {
    CircularImageView(image: Image("batman"))
}
