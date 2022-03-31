//
//  SportsAPI.swift
//  Wager
//
//  Created by Emrecan OZTURK on 31.03.2022.
//

import Foundation
import Moya

enum SportsAPI {
    case getSports
    case getOdds(sportsKey: String)
}

extension SportsAPI: TargetType {
    var baseURL: URL {
        guard let apiString = Bundle.main.infoDictionary?["BASE_API_URL"] as? String else { fatalError() }
        guard let apiURL = URL(string: apiString) else { fatalError() }
        return apiURL
    }
    
    var path: String {
        switch self {
            case .getSports              : return "/sports"
            case .getOdds(let sportsKey) : return "/sports/" + sportsKey + "/odds"
        }
    }
    
    var method: Moya.Method {
        .get
    }
    
    var task: Task {
        guard let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String else { fatalError() }
        switch self {
            case .getSports  : return .requestParameters(parameters: ["apiKey" : apiKey], encoding: URLEncoding.queryString)
            case .getOdds(_) : return .requestParameters(parameters: ["apiKey" : apiKey, "regions": "eu"] , encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        nil
    }
    
    
}
