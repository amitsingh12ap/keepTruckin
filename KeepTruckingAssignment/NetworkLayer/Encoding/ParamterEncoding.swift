//
//  ParameterEncoding.swift
//  KeepTruckingAssignment
//
//  Created by 13216146 on 22/05/21.
//

import Foundation

public typealias Parameters = [String: Any]

public enum NetworkError : String, Error {
    case parametersNil = "Parameters were nil."
    case encodingFailed = "Parameter encoding failed."
    case missingURL = "URL is nil."
}

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}
