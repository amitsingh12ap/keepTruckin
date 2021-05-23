//
//  FetchEndPointProtocol.swift


import Foundation

protocol FetchEndPointProtocol {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
}
