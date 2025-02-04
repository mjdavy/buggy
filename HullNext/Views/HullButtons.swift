//
//  BeanTownButtons.swift
//  MapKitDemo
//
//  Created by christian on 6/22/23.
//

import SwiftUI
import MapKit

struct HullButtons: View {
    @Binding var position: MapCameraPosition
    @Binding var showTransit: Bool
    @Binding var showPois: Bool
    @Binding var showSearchResults: Bool
    @Binding var showBeachConditions: Bool
    
    var visibleRegion: MKCoordinateRegion?
    @Environment(SheetCoordinator<DetailsSheet>.self) private var sheetCoordinator
    
    let width = 25.0
    
    var body: some View {
        HStack {
            // New button with HullNextLogo image
            Link(destination: URL(string: "https://hullnext.com")!) {
                Image("HullNextLogo")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle()) // Make the image circular
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 1) // Add a white circle around the image
                            .scaleEffect(0.85)
                    )
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
            }
            .buttonStyle(.automatic)
            
            Spacer()
            HStack {
                
                Button {
                    withAnimation {
                        //showPois = true
                        //showBeachConditions = false
                        ///position = .automatic
                        //hullNextData.selectedPointOfInterest = nil
                        //if showPois {
                        //    showTransit = false
                        //    transport.stopStreaming()
                        //}
                        sheetCoordinator.presentSheet(.bogusView)
                        
                    }
                } label: {
                    Label("Bogus", systemImage: "questionmark.app.fill")
                        .frame(width: width, height: width)
                }
                
                
            }
            .buttonStyle(.borderedProminent)
            .labelStyle(.iconOnly)
            Spacer()
        }
    }
}
