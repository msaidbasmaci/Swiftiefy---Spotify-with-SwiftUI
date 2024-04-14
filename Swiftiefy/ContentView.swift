//
//  ContentView.swift
//  Swiftiefy
//
//  Created by Muhammed Said BASMACI on 3.04.2024.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {
    
    @Environment(\.router) var router
    
    var body: some View {
        List {
            Button("Open Saidify") {
                router.showScreen(.fullScreenCover) { _ in
                    SpotifyHomeView()
                }
                
            }
        }
        }
    }

#Preview {
    RouterView { _ in
        ContentView()
    }
}
