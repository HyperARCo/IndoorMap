//
//  ViewController.swift
//  IndoorMap
//
//  Created by Andrew Hart on 13/10/2019.
//  Copyright © 2019 Dent Reality. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class UnitOverlay: MKPolygon {
	var unit: IndoorMapUnit?
	
	convenience init(unit: IndoorMapUnit) {
		self.init(coordinates: unit.coordinates, count: unit.coordinates.count)
		
		self.unit = unit
	}
}

class OpeningOverlay: MKCircle {
	static let standardSize: Double = 0.5
}

class RouteOverlay: MKPolyline {
	
}

class ViewController: UIViewController {
	var venue = IndoorMapVenue()
	
	var mapView = MKMapView()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		mapView.region = MKCoordinateRegion(
			center: CLLocationCoordinate2D(latitude: 51.52472618906404, longitude: -0.04060944600496441),
			latitudinalMeters: 40,
			longitudinalMeters: 40)
		mapView.delegate = self
		
		view.addSubview(mapView)
		
		let tapGR = UITapGestureRecognizer(target: self, action: #selector(respondToMapTap(gr:)))
		mapView.addGestureRecognizer(tapGR)
		
		let unit1Coordinates = [
			CLLocationCoordinate2D(latitude: 51.52472618906404, longitude: -0.04060944600496441),
			CLLocationCoordinate2D(latitude: 51.52471357679181, longitude: -0.04063115374217572),
			CLLocationCoordinate2D(latitude: 51.52460594812239, longitude: -0.04082205425093612),
			CLLocationCoordinate2D(latitude: 51.52468192813869, longitude: -0.040936725272331394),
			CLLocationCoordinate2D(latitude: 51.52480917471999, longitude: -0.040728183521423496),
			CLLocationCoordinate2D(latitude: 51.52472618906404, longitude: -0.04060944600496441)
		]
		let unit1 = IndoorMapUnit(coordinates: unit1Coordinates, category: .room)
		venue.units.append(unit1)
		let unit1Overlay = UnitOverlay(unit: unit1)
		mapView.addOverlay(unit1Overlay)
		
		let unit2Coordinates = [
			CLLocationCoordinate2D(latitude: 51.52469793665168, longitude: -0.04056811798363925),
			CLLocationCoordinate2D(latitude: 51.52472618906404, longitude: -0.04060944600496441),
			CLLocationCoordinate2D(latitude: 51.52480917471999, longitude: -0.040728183521423496),
			CLLocationCoordinate2D(latitude: 51.52483190485279, longitude: -0.04068878857651726),
			CLLocationCoordinate2D(latitude: 51.524807915782354, longitude: -0.04065391985932366),
			CLLocationCoordinate2D(latitude: 51.524822100625535, longitude: -0.0406291094259359),
			CLLocationCoordinate2D(latitude: 51.524732355831894, longitude: -0.040506091900169856),
			CLLocationCoordinate2D(latitude: 51.52469793665168, longitude: -0.04056811798363925)
		]
		let unit2 = IndoorMapUnit(coordinates: unit2Coordinates, category: .room)
		venue.units.append(unit2)
		let unit2Overlay = UnitOverlay(unit: unit2)
		mapView.addOverlay(unit2Overlay)
		
		let unit3Coordinates = [
			CLLocationCoordinate2D(latitude: 51.52483190485279, longitude: -0.04068878857651726),
			CLLocationCoordinate2D(latitude: 51.52487334545323, longitude: -0.04061727129737847),
			CLLocationCoordinate2D(latitude: 51.52484922426736, longitude: -0.040581172685007064),
			CLLocationCoordinate2D(latitude: 51.52482779729118, longitude: -0.04061913951189898),
			CLLocationCoordinate2D(latitude: 51.524822100625535, longitude: -0.0406291094259359),
			CLLocationCoordinate2D(latitude: 51.524807915782354, longitude: -0.04065391985932366),
			CLLocationCoordinate2D(latitude: 51.52483190485279, longitude: -0.04068878857651726)
		]
		let unit3 = IndoorMapUnit(coordinates: unit3Coordinates, category: .room)
		venue.units.append(unit3)
		let unit3Overlay = UnitOverlay(unit: unit3)
		mapView.addOverlay(unit3Overlay)
		
		let unit4Coordinates = [
			CLLocationCoordinate2D(latitude: 51.52484922426736, longitude: -0.040581172685007064),
			CLLocationCoordinate2D(latitude: 51.52487334545323, longitude: -0.04061727129737847),
			CLLocationCoordinate2D(latitude: 51.524924057315104, longitude: -0.040528821264160804),
			CLLocationCoordinate2D(latitude: 51.52485905632582, longitude: -0.040432831447105855),
			CLLocationCoordinate2D(latitude: 51.52481276267611, longitude: -0.04051423713276543),
			CLLocationCoordinate2D(latitude: 51.52484420209009, longitude: -0.040560733289627546),
			CLLocationCoordinate2D(latitude: 51.52484979560643, longitude: -0.04055195531691425),
			CLLocationCoordinate2D(latitude: 51.524854072321965, longitude: -0.04055815937418953),
			CLLocationCoordinate2D(latitude: 51.524858534824745, longitude: -0.040564632945461206),
			CLLocationCoordinate2D(latitude: 51.52484922426736, longitude: -0.040581172685007064)
		]
		let unit4 = IndoorMapUnit(coordinates: unit4Coordinates, category: .room)
		venue.units.append(unit4)
		let unit4Overlay = UnitOverlay(unit: unit4)
		mapView.addOverlay(unit4Overlay)
		
		let unit5Coordinates = [
			CLLocationCoordinate2D(latitude: 51.52469969672405, longitude: -0.04065504355821759),
			CLLocationCoordinate2D(latitude: 51.52467102709267, longitude: -0.040614721365273),
			CLLocationCoordinate2D(latitude: 51.524659070814565, longitude: -0.04059578219312244),
			CLLocationCoordinate2D(latitude: 51.5246736349304, longitude: -0.040570092509774926),
			CLLocationCoordinate2D(latitude: 51.52473122482326, longitude: -0.04046850954182447),
			CLLocationCoordinate2D(latitude: 51.52478927942754, longitude: -0.04055524521390908),
			CLLocationCoordinate2D(latitude: 51.52481276267611, longitude: -0.04051423713276543),
			CLLocationCoordinate2D(latitude: 51.52485905632582, longitude: -0.040432831447105855),
			CLLocationCoordinate2D(latitude: 51.524802105112634, longitude: -0.040344585722778),
			CLLocationCoordinate2D(latitude: 51.52468862619378, longitude: -0.040177618211600936),
			CLLocationCoordinate2D(latitude: 51.52454431792703, longitude: -0.0404289469588548),
			CLLocationCoordinate2D(latitude: 51.52445676321838, longitude: -0.04060060988429609),
			CLLocationCoordinate2D(latitude: 51.52460594812239, longitude: -0.04082205425093612),
			CLLocationCoordinate2D(latitude: 51.52469969672405, longitude: -0.04065504355821759)
		]
		let unit5 = IndoorMapUnit(coordinates: unit5Coordinates, category: .room)
		venue.units.append(unit5)
		let unit5Overlay = UnitOverlay(unit: unit5)
		mapView.addOverlay(unit5Overlay)
		
		let unit6Coordinates = [
			CLLocationCoordinate2D(latitude: 51.52478927942754, longitude: -0.04055524521390908),
			CLLocationCoordinate2D(latitude: 51.52479274068589, longitude: -0.0405601982138011),
			CLLocationCoordinate2D(latitude: 51.524821612532705, longitude: -0.04060151331941598),
			CLLocationCoordinate2D(latitude: 51.52484420209009, longitude: -0.040560733289627546),
			CLLocationCoordinate2D(latitude: 51.52481276267611, longitude: -0.04051423713276543),
			CLLocationCoordinate2D(latitude: 51.52478927942754, longitude: -0.04055524521390908),
		]
		let unit6 = IndoorMapUnit(coordinates: unit6Coordinates, category: .room)
		venue.units.append(unit6)
		let unit6Overlay = UnitOverlay(unit: unit6)
		mapView.addOverlay(unit6Overlay)
		
		let hallwayCoordinates = [
			CLLocationCoordinate2D(latitude: 51.524659070814565, longitude: -0.04059578219312244),
			CLLocationCoordinate2D(latitude: 51.52469969672405, longitude: -0.04065504355821759),
			CLLocationCoordinate2D(latitude: 51.52471357679181, longitude: -0.04063115374217572),
			CLLocationCoordinate2D(latitude: 51.52472618906404, longitude: -0.04060944600496441),
			CLLocationCoordinate2D(latitude: 51.52469793665168, longitude: -0.04056811798363925),
			CLLocationCoordinate2D(latitude: 51.524732355831894, longitude: -0.040506091900169856),
			CLLocationCoordinate2D(latitude: 51.524822100625535, longitude: -0.0406291094259359),
			CLLocationCoordinate2D(latitude: 51.524858534824745, longitude: -0.040564632945461206),
			CLLocationCoordinate2D(latitude: 51.52484979560643, longitude: -0.04055195531691425),
			CLLocationCoordinate2D(latitude: 51.52484420209009, longitude: -0.040560733289627546),
			CLLocationCoordinate2D(latitude: 51.524821612532705, longitude: -0.04060151331941598),
			CLLocationCoordinate2D(latitude: 51.52478927942754, longitude: -0.04055524521390908),
			CLLocationCoordinate2D(latitude: 51.52473122482326, longitude: -0.04046850954182447),
			CLLocationCoordinate2D(latitude: 51.524659070814565, longitude: -0.04059578219312244)
		]
		let hallway = IndoorMapUnit(coordinates: hallwayCoordinates, category: .hallway)
		venue.units.append(hallway)
		let hallwayOverlay = UnitOverlay(unit: hallway)
		mapView.addOverlay(hallwayOverlay)
		
		let opening1 = IndoorMapOpening(
			coordinate: CLLocationCoordinate2D(latitude: 51.52471357679181, longitude: -0.04063115374217572),
			origin: unit1, destination: hallway)
		venue.openings.append(opening1)
		let opening1Overlay = OpeningOverlay(center: opening1.coordinate, radius: OpeningOverlay.standardSize)
		mapView.addOverlay(opening1Overlay)
		
		let opening2 = IndoorMapOpening(
			coordinate: CLLocationCoordinate2D(latitude: 51.52482779729118, longitude: -0.04061913951189898),
			origin: unit3, destination: hallway)
		venue.openings.append(opening2)
		let opening2Overlay = OpeningOverlay(center: opening2.coordinate, radius: OpeningOverlay.standardSize)
		mapView.addOverlay(opening2Overlay)
		
		let opening3 = IndoorMapOpening(
			coordinate: CLLocationCoordinate2D(latitude: 51.524854072321965, longitude: -0.04055815937418953),
			origin: unit4, destination: hallway)
		venue.openings.append(opening3)
		let opening3Overlay = OpeningOverlay(center: opening3.coordinate, radius: OpeningOverlay.standardSize)
		mapView.addOverlay(opening3Overlay)
		
		let opening4 = IndoorMapOpening(
			coordinate: CLLocationCoordinate2D(latitude: 51.52479274068589, longitude: -0.0405601982138011),
			origin: unit6, destination: hallway)
		venue.openings.append(opening4)
		let opening4Overlay = OpeningOverlay(center: opening4.coordinate, radius: OpeningOverlay.standardSize)
		mapView.addOverlay(opening4Overlay)
		
		let opening5 = IndoorMapOpening(
			coordinate: CLLocationCoordinate2D(latitude: 51.5246736349304, longitude: -0.040570092509774926),
			origin: unit5, destination: hallway)
		venue.openings.append(opening5)
		let opening5Overlay = OpeningOverlay(center: opening5.coordinate, radius: OpeningOverlay.standardSize)
		mapView.addOverlay(opening5Overlay)
		
		let route = venue.findRoute(from: unit1, to: unit4)
		let routeOverlay = RouteOverlay(coordinates: route, count: route.count)
		mapView.addOverlay(routeOverlay)
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		mapView.frame = view.bounds
	}
	
	@objc func respondToMapTap(gr: UITapGestureRecognizer) {
		//Show the coordinate of where the user tapped
		
		if gr.state == .ended {
			let point = gr.location(in: mapView)
			let coordinate = mapView.convert(point, toCoordinateFrom: mapView)
			
			print("coordinate: \(coordinate)")
		}
	}
}

extension ViewController: MKMapViewDelegate {
	func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
		if let overlay = overlay as? UnitOverlay {
			let renderer = MKPolygonRenderer(polygon: overlay)
			
			if let unit = overlay.unit {
				if unit.category == .hallway {
					renderer.fillColor = UIColor.systemTeal.withAlphaComponent(0.2)
					renderer.strokeColor = UIColor.systemTeal
				} else {
					renderer.fillColor = UIColor.systemGreen.withAlphaComponent(0.2)
					renderer.strokeColor = UIColor.systemGreen
				}
			}
			
			renderer.lineWidth = 2
			
			return renderer
		} else if let overlay = overlay as? OpeningOverlay {
			let renderer = MKCircleRenderer(circle: overlay)
			renderer.fillColor = UIColor.systemPurple
			
			return renderer
		} else if let overlay = overlay as? RouteOverlay {
			let renderer = MKPolylineRenderer(polyline: overlay)
			renderer.lineWidth = 2
			renderer.strokeColor = UIColor.systemRed
			
			return renderer
		}
		
		return MKOverlayRenderer(overlay: overlay)
	}
}
