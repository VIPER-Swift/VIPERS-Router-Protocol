//
//  RouteConverterProtocol.swift
//  Pods
//
//  Created by Jan Bartel on 07.12.16.
//
//

import Foundation
import VIPERS_Converter_Protocol

public protocol RouteConverterProtocol : TypedConverterProtocol, RouteDefinitionProtocol{
    
    associatedtype ConverterInputType = RoutableType
    associatedtype ConverterOutputType = RouteType
    
    associatedtype RoutableType : RouteableProtocol
    associatedtype RouteType : RouteDescriptionProtocol
    
    
    func isResponsible(_ input:RoutableType) throws -> Bool
    func convert(_ input: RoutableType) throws -> RouteType
}
