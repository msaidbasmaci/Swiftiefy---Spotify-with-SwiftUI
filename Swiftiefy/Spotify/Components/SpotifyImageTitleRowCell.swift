//
//  SpotifyImageTitleRowCell.swift
//  Swiftiefy
//
//  Created by Muhammed Said BASMACI on 8.04.2024.
//

import SwiftUI

struct SpotifyImageTitleRowCell: View {
    
    var imageSize: CGFloat = 100
    var imageName: String = Constants.randomImage
    var title: String = "Some Item Name"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ImageLoaderView(urlString: imageName)
                .frame(width: imageSize, height: imageSize)
                .cornerRadius(16)

            
            Text(title)
                .font(.callout)
                .foregroundStyle(.spotifyLightGray)
                .lineLimit(2)
                .padding(4)
            
        }
        .frame(width: imageSize)
     }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        SpotifyImageTitleRowCell()
    }
}
