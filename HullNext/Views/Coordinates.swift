//
//  SampleCoordinates.swift
//  MapKitDemo
//
//  Created by christian on 6/22/23.
//

import Foundation
import MapKit

extension CLLocationCoordinate2D {
    
    static let hull = CLLocationCoordinate2D(
        latitude: 42.27662,
        longitude: -70.88767)
    
}

extension MKCoordinateRegion {
    
    static let hull = MKCoordinateRegion(
        center: .hull,
        span: MKCoordinateSpan(
            latitudeDelta: 0.125,
            longitudeDelta: 0.125)
    )
}
