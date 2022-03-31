//
//  EventsModels.swift
//  Wager
//
//  Created by Emrecan OZTURK on 31.03.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Events {
    // MARK: Use cases
  
    enum Models {
        struct Request {}
        struct Response {
            var model: [SportsModel]?
        }
        struct ViewModel {
            var model: [SportsModel]?
        }
    }
}
