//
//  IndoorMapUnit.swift
//  IndoorMap
//
//  Created by Andrew Hart on 13/10/2019.
//  Copyright © 2019 Dent Reality. All rights reserved.
//

import Foundation
import CoreLocation

class IndoorMapUnit {
	enum Category {
		case room
		case hallway
	}
	
	var id = UUID().uuidString
	
	///Unit boundary. Last coordinate is the same as the first coordinate
	var coordinates = [CLLocationCoordinate2D]()
	
	var category: Category
	
	init(coordinates: [CLLocationCoordinate2D], category: Category) {
		self.coordinates = coordinates
		self.category = category
	}
}
