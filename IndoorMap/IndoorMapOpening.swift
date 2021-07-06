//
//  IndoorMapOpening.swift
//  IndoorMap
//
//  Created by Andrew Hart on 13/10/2019.
//  Copyright © 2019 Dent Reality. All rights reserved.
//

import Foundation
import CoreLocation

class IndoorMapOpening {
	var id = UUID().uuidString
	
	var coordinate: CLLocationCoordinate2D
	
	///Openings are omni-directional, so the order of origin and destination doesn't matter.
	var origin: IndoorMapUnit?
	var destination: IndoorMapUnit?
	
	init(coordinate: CLLocationCoordinate2D, origin: IndoorMapUnit?, destination: IndoorMapUnit?) {
		self.coordinate = coordinate
		self.origin = origin
		self.destination = destination
	}
}
