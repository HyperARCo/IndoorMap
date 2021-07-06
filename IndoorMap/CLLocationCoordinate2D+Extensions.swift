//
//  CLLocationCoordinate2D+Extensions.swift
//  IndoorMap
//
//  Created by Andrew Hart on 13/10/2019.
//  Copyright © 2019 Dent Reality. All rights reserved.
//

import Foundation
import CoreLocation

extension FloatingPoint {
	var degreesToRadians: Self { return self * .pi / 180 }
	var radiansToDegrees: Self { return self * 180 / .pi }
}

extension CLLocationDistance {
	static let earthRadius = 6371e3
}

extension CLLocationCoordinate2D {
	///Distance in meters between two coordinates
	func distance(to coordinate: CLLocationCoordinate2D) -> CLLocationDistance {
		let R = CLLocationDistance.earthRadius; // metres
		let φ1 = self.latitude.degreesToRadians
		let φ2 = coordinate.latitude.degreesToRadians
		let Δφ = (coordinate.latitude-self.latitude).degreesToRadians
		let Δλ = (coordinate.longitude-self.longitude).degreesToRadians
		
		let a = sin(Δφ/2) * sin(Δφ/2) + cos(φ1) * cos(φ2) * sin(Δλ/2) * sin(Δλ/2)
		let c = 2 * atan2(sqrt(a), sqrt(1-a))
		
		let distance = R * c
		
		return distance
	}
	
	///Initial heading, in radians, when travelling between 2 given coordinates
	func heading(to coordinate: CLLocationCoordinate2D) -> Double {
		let φ1 = self.latitude.degreesToRadians
		let φ2 = coordinate.latitude.degreesToRadians
		
		let λ1 = self.longitude.degreesToRadians
		let λ2 = coordinate.longitude.degreesToRadians
		
		let y = sin(λ2-λ1) * cos(φ2)
		let x = cos(φ1) * sin(φ2) - sin(φ1) * cos(φ2) * cos(λ2-λ1)
		let heading = atan2(y, x)
		
		return heading
	}
	
	func destination(heading: Double, distance: CLLocationDistance) -> CLLocationCoordinate2D {
		let R = CLLocationDistance.earthRadius
		let d = distance
		let h = heading
		
		let φ1 = latitude.degreesToRadians
		let λ1 = longitude.degreesToRadians
		
		let φ2 = asin(sin(φ1) * cos(d/R) + cos(φ1) * sin(d/R) * cos(h))
		let λ2 = λ1 + atan2(sin(h) * sin(d/R) * cos(φ1),
							  cos(d/R) - sin(φ1) * sin(φ2));
		
		return CLLocationCoordinate2D(latitude: φ2.radiansToDegrees, longitude: λ2.radiansToDegrees)
	}
}
