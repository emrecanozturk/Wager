//
//  OddModel.swift
//  Wager
//
//  Created by Emrecan OZTURK on 31.03.2022.
//

import Foundation

// MARK: - Odd
struct Odd: Codable {
    let id, sportKey, sportTitle: String
    let commenceTime: Date
    let homeTeam, awayTeam: String
    let bookmakers: [Bookmaker]

    enum CodingKeys: String, CodingKey {
        case id
        case sportKey
        case sportTitle
        case commenceTime
        case homeTeam
        case awayTeam
        case bookmakers
    }
}

// MARK: - Bookmaker
struct Bookmaker: Codable {
    let key, title: String
    let lastUpdate: Date
    let markets: [Market]

    enum CodingKeys: String, CodingKey {
        case key, title
        case lastUpdate
        case markets
    }
}

// MARK: - Market
struct Market: Codable {
    let key: String
    let outcomes: [Outcome]
}

// MARK: - Outcome
struct Outcome: Codable {
    let name: String
    let price: Double
}
