//
//  addressDetailPage.swift
//  UberEats
//
//  Created by R92 on 11/08/23.
//

import UIKit
import MapKit

class addressDetailPage: UIViewController, MKMapViewDelegate, UISearchBarDelegate {
    
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var serach: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serach.delegate = self
        map.delegate = self
        
    }
    //MARK = Searchbar
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder() // Dismiss keyboard
        
        if let query = searchBar.text, !query.isEmpty {
            searchForLocation(query: query)
        }
    }
    
    // MARK = Location Search
    
    func searchForLocation(query: String) {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = query
        
        let search = MKLocalSearch(request: request)
        search.start { [weak self] (response, error) in
            guard let self = self, let response = response else {
                return
            }
            self.map.removeAnnotations(self.map.annotations)
            
            for item in response.mapItems {
                let annotation = MKPointAnnotation()
                annotation.title = item.name
                annotation.coordinate = item.placemark.coordinate
                self.map.addAnnotation(annotation)
                searchForLocation()
                
            }
            
            // MARK = Zoom To Map
            func searchForLocation() {
                
                let geocoder = CLGeocoder()
                geocoder.geocodeAddressString(self.serach.text ?? "") { (placemarks, error) in
                    if let error = error {
                        print("Geocoding error: \(error.localizedDescription)")
                        return
                    }
                    
                    if let placemark = placemarks?.first {
                        
                        let region = MKCoordinateRegion(center: placemark.location!.coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
                        self.map.setRegion(region, animated: true)
                        self.map.reloadInputViews()
                    }
                }
            }
        }
        
    }
}



