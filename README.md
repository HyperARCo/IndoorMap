# Indoor navigation task
We have an indoor map model, with a simple structure: 

* IndoorMapVenue - the venue containing all of the units 
* IndoorMapUnit - rooms, hallways etc.
* IndoorMapOpening - entranceways, openings between units 

In our sample project, we’ve setup the indoor map for a simple building with 5 rooms and a hallway. We’ve displayed this using MapKit overlays. 

We want to add navigation functionality, to help a user find their way from one room to another. To that end, we have a function we want to implement: 

```
  findRoute(from: IndoorMapUnit, to: IndoorMapUnit) -> [CLLocationCoordinate2D]
```

In the example implementation, we call this function to find a route between 2 specific rooms, but we should be able to find a route between any 2 rooms. Imagine the building has many more rooms, and that your approach should be suitable for this.

Explain how you’d approach implementing this navigation functionality. This can include: 

* Any modifications you’d make to the indoor mapping format (if any)
* Any modifications you’d make to the building map
* Any algorithms, third party libraries or frameworks you might use 
* Some code, or pseudocode, to demonstrate how you’d implement your solution 
* A clear explanation of how you’d approach this problem. 

You’re not expected to implement this solution in full. 

Feel free to go into detail as much as you’d like, and feel free to include external research. 

Spend no more than 4 hours on this. 

An important outcome of this task is that we understand how you’d approach this problem, and ability to explore potential solutions. 
 
