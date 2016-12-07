//
//  RouterProtocol.swift
//  Pods
//
//  Created by Jan Bartel on 06.12.16.
//
//

import Foundation
import VIPERS_Converter_Protocol

public protocol RouterProtocol{
    func addRouteDefinition<T : RouteDefinitionProtocol>(_ routeDefinition : T) throws
    func addRouteDefinitionConverter<T : RouteDefinitionConverterProtocol>(_ converter : T)
    func route<T : RouteDescriptionProtocol>(_ routeable : RouteableProtocol) throws -> T
    func routeAndCallHandler<T : RouteDescriptionProtocol>(_ routeable : RouteableProtocol) throws -> T
}
