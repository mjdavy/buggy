//
//  MapView.swift
//  HullNext
//
//  Created by Martin Davy on 9/19/24.
//

import MapKit
import SwiftUI



struct MapView: View {

    
    @State private var position: MapCameraPosition = .region(.hull)
    @State private var showingBogusView = true
    
    var body: some View {
      
        Map(position: $position) {
            UserAnnotation()
        }
        .sheet(isPresented: $showingBogusView) {
            BogusView()
        }
    }
}
