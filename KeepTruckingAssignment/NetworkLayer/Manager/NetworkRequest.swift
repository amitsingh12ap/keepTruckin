//
//  NetworkRequest.swift
//  KeepTruckingAssignment
//
//  Created by 13216146 on 22/05/21.
//

import Foundation

class NetworkRequest {
    static let sharedInstance = NetworkRequest()
    private init() {}
    
    func executeRequest(_ request: URLRequest, completion: @escaping (Result<Data, APIServiceError>) -> (Void)) {
        // Todo - Can Check for internet connection
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(.failure(.fetchError))
                }
                return
            }
            DispatchQueue.main.async {
                completion(.success(data))
            }
        }.resume()
    }
}
