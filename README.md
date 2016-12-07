# VIPERS-Router-Protocol

[![CI Status](http://img.shields.io/travis/Jan Bartel/VIPERS-Router-Protocol.svg?style=flat)](https://travis-ci.org/Jan Bartel/VIPERS-Router-Protocol)
[![Version](https://img.shields.io/cocoapods/v/VIPERS-Router-Protocol.svg?style=flat)](http://cocoapods.org/pods/VIPERS-Router-Protocol)
[![License](https://img.shields.io/cocoapods/l/VIPERS-Router-Protocol.svg?style=flat)](http://cocoapods.org/pods/VIPERS-Router-Protocol)
[![Platform](https://img.shields.io/cocoapods/p/VIPERS-Router-Protocol.svg?style=flat)](http://cocoapods.org/pods/VIPERS-Router-Protocol)

Protocols for the router implementation used by the iOS application framework 'VIPERS'.

At first a very abstract definition (practical information can be found after that ;)):

A router is an object that maps from a routeable item (an object conforming to the empty protocol RoutableProtocol) to a specific Route-Description (an object conforming to the empty protocol RouteDescriptionProtocol). It therefore uses a RouteDefinition (an object conforming to an empty RouteDefinitionProtocol) to map from a Routable to a RouteDescription. A router can therefore convert the Routeable to a RouteDescription and can additionally run a closure wich gets the RouteDescription as a parameter. 

Lets become more practical, the VIPERS default implementation of the RouterProtocol in VIPERS is the DefaultRouter.
A default router maps from a routable string to a DefaultRoute which contains the identifier of the route (the routable string), and some parameters extracted from it.

It should look like that:

```swift

let router = DefaultRouter()
let routeDefinition : String = "/testRoute/:id"

do {
    try router.addRouteDefinition(routeDefinition) { ( route : DefaultRoute ) in
        print("this block is called when router.routeAndCallHandler is called with a valid routable")
        print("identifier: \(route.identifier)")
        print("parameters: \(route.parameters)")
    }

    let route1 : DefaultRoute = try router.routeAndCallHandler("/testRoute/15")
    print("route1: \(route1)")

} catch let error {
    // implement your error handling here 
}


```

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

VIPERS-Router-Protocol is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "VIPERS-Router-Protocol"
```

## Author

Jan Bartel, barteljan@yahoo.de

## License

VIPERS-Router-Protocol is available under the MIT license. See the LICENSE file for more info.
