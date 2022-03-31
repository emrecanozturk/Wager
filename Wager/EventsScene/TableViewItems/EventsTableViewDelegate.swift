//
//  EventsTableViewDelegate.swift
//  Wager
//
//  Created by Emrecan OZTURK on 1.04.2022.
//

import Foundation
import UIKit

protocol EventsPresenting: AnyObject {
    func currentSelected(_ index: Int)
    func willDisplayCell(_ index: Int)
}

class EventsTableViewDelegate: NSObject, UITableViewDelegate {
    
    var presentingController: EventsPresenting?
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presentingController?.currentSelected(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        presentingController?.willDisplayCell(indexPath.row)
    }
}
