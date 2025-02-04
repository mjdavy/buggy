//
//  HullNextApp.swift
//  HullNext
//
//  Created by Martin Davy on 9/19/24.
//

import SwiftUI

@main
struct HullNextApp: App {
    @State private var bogusvm = BogusViewModel()
    
    var body: some Scene {
        WindowGroup {
            MapView()
                .environment(bogusvm)
        }
    }
}
