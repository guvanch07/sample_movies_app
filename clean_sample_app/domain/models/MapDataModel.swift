//
//  MapDataModel.swift
//  clean_sample_app
//
//  Created by Macbook on 31.10.22.
//

import Foundation
import MapKit
struct PointOfInterest: Identifiable {
    // 2.
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    
    // 3.
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
