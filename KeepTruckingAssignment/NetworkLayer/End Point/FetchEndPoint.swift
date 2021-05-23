//
//  FetchEndPoint.swift


import Foundation


// Can have mutilple cases for fetch request for different api calls
enum FetchEndPoint {
    case fetchCity(_ searchText: String,_ pageNumber: Int)
}

extension FetchEndPoint: FetchEndPointProtocol {
    var path: String {
        return "/services/rest/"
    }
    
    var baseURL: URL {
        guard let url = URL(string: AppURLConstants.basefetchURL) else {
            fatalError("url can't be made right now")
        }
        return url
    }
    
    var httpMethod: HTTPMethod {
        return .get
    }
    var urlParameters: Parameters {
        switch self {
        case .fetchCity(let searchedText, let pageNumber):
            return [
                KeyConstants.FetchCities.page.rawValue: pageNumber,
                KeyConstants.FetchCities.searchText.rawValue: searchedText,
                KeyConstants.FetchCities.userName.rawValue: "keep_truckin"
            ]
        }
    }
    
    func encode(request: inout URLRequest, urlParameters: Parameters?) {
        guard let urlParameters = urlParameters, let url = request.url  else { return }
        if var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false) {
            urlComponents.queryItems = [URLQueryItem]()
            for (key, value) in urlParameters {
                let queryItem = URLQueryItem(name: key,
                                             value: "\(value)".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed))
                urlComponents.queryItems?.append(queryItem)
            }
            request.url = urlComponents.url
        }
    }
}
