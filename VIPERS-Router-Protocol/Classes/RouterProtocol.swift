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
    func add<T : RouteDefinitionProtocol>(routeDefinition : T) throws
    func add<T : RouteDefinitionProtocol,R : RouteDescriptionProtocol>(routeDefinition : T, handler: @escaping (R) -> Void) throws
    func add<T : RouteDefinitionConverterProtocol>(routeDefinitionConverter : T)
    func route<T : RouteDescriptionProtocol>(_ routeable : RouteableProtocol) throws -> T
    func routeAndCallHandler<T : RouteDescriptionProtocol>(_ routeable : RouteableProtocol) throws -> T
}
