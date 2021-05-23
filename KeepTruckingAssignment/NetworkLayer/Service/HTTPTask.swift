//
//  HTTPTask.swift
//  KeepTruckingAssignment
//
//  Created by 13216146 on 22/05/21.
//

import Foundation

public typealias HTTPHeaders = [String: String]

public enum HTTPTask {
    case request
    
    case requestParameters(bodyParamters: Parameters?, urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParamters: Parameters?, urlParameters: Parameters?, additionalHeaders: HTTPHeaders?)
}
