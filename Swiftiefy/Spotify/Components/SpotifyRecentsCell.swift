//
//  SpotifyRecentsCell.swift
//  Swiftiefy
//
//  Created by Muhammed Said BASMACI on 6.04.2024.
//

import SwiftUI

struct SpotifyRecentsCell: View {
    
    var imageName : String = Constants.randomImage
    var title : String = "Some Random Title"
    
    var body: some View {
        HStack(spacing: 16) {
            ImageLoaderView(urlString: imageName)
                .frame(width: 55, height: 55, alignment: .center)
            
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(2)
        }
        .padding(.trailing, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .themeColors(isSelected: false)
        .cornerRadius(10)
    }
    
}

#Preview {
    ZStack{
        Color.black.ignoresSafeArea()
        
        VStack {
            HStack{
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
            HStack{
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
        }
    }
}
