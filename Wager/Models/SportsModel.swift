//
//  SportsModel.swift
//  Wager
//
//  Created by Emrecan OZTURK on 31.03.2022.
//

import Foundation

// MARK: - SportsModel
struct SportsModel: Codable {
    let key: String?
    let active: Bool?
    let group: String?
    let description: String?
    let title: String?
    let hasOutrights: Bool?
    
    enum CodingKeys: String, CodingKey {
        case key
        case active
        case group
        case description
        case title
        case hasOutrights = "has_outrights"
    }
}
