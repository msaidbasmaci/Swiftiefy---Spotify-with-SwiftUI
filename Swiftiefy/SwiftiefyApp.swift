//
//  SwiftiefyApp.swift
//  Swiftiefy
//
//  Created by Muhammed Said BASMACI on 3.04.2024.
//

import SwiftUI
import SwiftfulRouting

@main
struct SwiftiefyApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                ContentView()
            }
        }
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
