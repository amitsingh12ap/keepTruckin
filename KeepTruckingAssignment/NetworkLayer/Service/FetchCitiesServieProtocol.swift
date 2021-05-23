//
//  FetchCitiesServieProtocol.swift
//  KeepTruckingAssignment
//
//  Created by 13216146 on 22/05/21.
//

import Foundation

protocol FetchCitiesServieProtocol {
    func fetchCities(with endPoint: FetchEndPoint, completionHandler: @escaping (Result<SearchListModel, APIServiceError>) -> Void)
}

extension FetchCitiesServieProtocol {
    func buildRequest(endPoint: FetchEndPoint) -> URLRequest {
        var request = URLRequest(url: endPoint.baseURL, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 15)
        request.httpMethod = endPoint.httpMethod.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        endPoint.encode(request: &request, urlParameters: endPoint.urlParameters)
        return request
    }
}
