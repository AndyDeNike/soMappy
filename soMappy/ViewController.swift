//
//  ViewController.swift
//  soMappy
//
//  Created by Grandma Denny on 5/17/19.
//  Copyright © 2019 GrandmaDennyInnovations. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    // You don't need to modify the default init(nibName:bundle:) method.
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 37.33, longitude: -121.87, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 37.33, longitude: -121.87)
        marker.title = "The Place"
        marker.snippet = "USA"
        marker.map = mapView
    }
}
