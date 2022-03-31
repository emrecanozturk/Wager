//
//  NetworkManager.swift
//  Wager
//
//  Created by Emrecan OZTURK on 31.03.2022.
//

import Foundation
import Moya
import PromiseKit

typealias responseSportsSuccess = (_ response: [SportsModel]) ->()
typealias responseOddsSuccess   = (_ response: [OddsModel]) ->()
typealias responseFailure       = (_ response: Error) ->()

protocol Networkable {
    
    var provider: MoyaProvider<SportsAPI> { get }
    
    func getSports (success: @escaping responseSportsSuccess, failure: @escaping responseFailure)
    func getOdds   (sportsKey: String, with success: @escaping responseOddsSuccess, failure: @escaping responseFailure)
    
}

struct SportsNetworkManager: Networkable {
    
    var provider = MoyaProvider<SportsAPI>(plugins: [NetworkLoggerPlugin(configuration: .init(logOptions: .verbose))])
    
    func getSports(success: @escaping responseSportsSuccess, failure: @escaping responseFailure) {
        firstly {
            provider.request(target: .getSports)
        }.map {
            try JSONDecoder().decode([SportsModel].self, from: $0.data)
        }.done { data in
            success(data)
        }.catch { error in
            failure(error)
        }
    }
    
    func getOdds(sportsKey: String, with success: @escaping responseOddsSuccess, failure: @escaping responseFailure) {
        firstly {
            provider.request(target: .getOdds(sportsKey: sportsKey))
        }.map {
            try JSONDecoder().decode([OddsModel].self, from: $0.data)
        }.done { data in
            success(data)
        }.catch { error in
            failure(error)
        }
    }
    
    
}
