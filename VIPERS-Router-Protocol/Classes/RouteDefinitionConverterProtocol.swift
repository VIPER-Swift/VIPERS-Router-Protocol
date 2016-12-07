//
//  RouteDefinitionConverterProtocol.swift
//  Pods
//
//  Created by Jan Bartel on 07.12.16.
//
//

import Foundation
import VIPERS_Converter_Protocol


public protocol RouteDefinitionConverterProtocol : TypedConverterProtocol{
    
    associatedtype ConverterInputType = RouteDefinitionType
    associatedtype ConverterOutputType = RouteConverterType
    
    associatedtype RouteDefinitionType : RouteDefinitionProtocol
    associatedtype RouteConverterType  : RouteConverterProtocol
    
    
    func isResponsible(_ input:RouteDefinitionType) -> Bool
    
    func convert(_ input: RouteDefinitionType) throws -> RouteConverterType
}
