//
//  FetchCitiesService.swift
//  KeepTruckingAssignment
//
//  Created by 13216146 on 22/05/21.
//

import Foundation

struct FetchCitiesService: FetchCitiesServieProtocol {
    
    func fetchCities(with endPoint: FetchEndPoint, completionHandler: @escaping (Result<SearchListModel, APIServiceError>) -> Void) {
        NetworkRequest.sharedInstance.executeRequest(buildRequest(endPoint: endPoint)) { result in
            switch result {
            case.failure(let apiError) :
                completionHandler(.failure(apiError))
            case .success(let data):
                if let movieResponseModel = try? JSONDecoder().decode(SearchListModel.self, from: data) {
                    completionHandler(.success(movieResponseModel))
                } else {
                    completionHandler(.failure(.decodeError))
                }
            }
        }
    }
}
