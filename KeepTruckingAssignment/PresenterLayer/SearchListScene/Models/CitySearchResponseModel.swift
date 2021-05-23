//
//  CitiSearchResponseModel.swift
//  KeepTruckingAssignment
//
//  Created by 13216146 on 22/05/21.
//

import Foundation

// MARK: - SearchListModel
struct CitiSearchResponseModel: Codable {
    let totalResultsCount : Int?
    let geonames : [Geonames]?

    enum CodingKeys: String, CodingKey {

        case totalResultsCount = "totalResultsCount"
        case geonames = "geonames"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        totalResultsCount = try values.decodeIfPresent(Int.self, forKey: .totalResultsCount)
        geonames = try values.decodeIfPresent([Geonames].self, forKey: .geonames)
    }
}

// MARK: - Geoname
struct Geonames : Codable {
    let adminCode1 : String?
    let lng : String?
    let geonameId : Int?
    let toponymName : String?
    let countryId : String?
    let fcl : String?
    let population : Int?
    let countryCode : String?
    let name : String?
    let fclName : String?
    let countryName : String?
    let fcodeName : String?
    let adminName1 : String?
    let lat : String?
    let fcode : String?

    enum CodingKeys: String, CodingKey {

        case adminCode1 = "adminCode1"
        case lng = "lng"
        case geonameId = "geonameId"
        case toponymName = "toponymName"
        case countryId = "countryId"
        case fcl = "fcl"
        case population = "population"
        case countryCode = "countryCode"
        case name = "name"
        case fclName = "fclName"
        case countryName = "countryName"
        case fcodeName = "fcodeName"
        case adminName1 = "adminName1"
        case lat = "lat"
        case fcode = "fcode"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        adminCode1 = try values.decodeIfPresent(String.self, forKey: .adminCode1)
        lng = try values.decodeIfPresent(String.self, forKey: .lng)
        geonameId = try values.decodeIfPresent(Int.self, forKey: .geonameId)
        toponymName = try values.decodeIfPresent(String.self, forKey: .toponymName)
        countryId = try values.decodeIfPresent(String.self, forKey: .countryId)
        fcl = try values.decodeIfPresent(String.self, forKey: .fcl)
        population = try values.decodeIfPresent(Int.self, forKey: .population)
        countryCode = try values.decodeIfPresent(String.self, forKey: .countryCode)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        fclName = try values.decodeIfPresent(String.self, forKey: .fclName)
        countryName = try values.decodeIfPresent(String.self, forKey: .countryName)
        fcodeName = try values.decodeIfPresent(String.self, forKey: .fcodeName)
        adminName1 = try values.decodeIfPresent(String.self, forKey: .adminName1)
        lat = try values.decodeIfPresent(String.self, forKey: .lat)
        fcode = try values.decodeIfPresent(String.self, forKey: .fcode)
    }

}
