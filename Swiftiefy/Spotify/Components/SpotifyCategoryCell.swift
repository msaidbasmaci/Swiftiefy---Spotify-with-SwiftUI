//
//  SpotifyCategoryCell.swift
//  Swiftiefy
//
//  Created by Muhammed Said BASMACI on 6.04.2024.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    
    var title: String = "All"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 30)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .themeColors(isSelected: isSelected)
            .cornerRadius(16)
    }
}

extension View { 
    func themeColors(isSelected: Bool) -> some View {
        self
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
    }
}

#Preview {
    ZStack{
        Color.black.ignoresSafeArea()
        
        VStack(spacing: 40){
            SpotifyCategoryCell(title: "DENEME")
            SpotifyCategoryCell(title: "DENEME", isSelected: true)
            SpotifyCategoryCell(isSelected: true)

        }
        
    }
    
}
