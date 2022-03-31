//
//  EventsTableViewDataSource.swift
//  Wager
//
//  Created by Emrecan OZTURK on 1.04.2022.
//

import Foundation
import UIKit

class EventsTableViewDataSource: NSObject, UITableViewDataSource {
    
    private var tableView: UITableView
    public var events: [SportsModel]? = nil
    
    init(tableView: UITableView){
        self.tableView = tableView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventTableViewCell", for: indexPath) as! EventTableViewCell
        cell.configure(title: events?[indexPath.row].title, group: events?[indexPath.row].group, description: events?[indexPath.row].description, isActive: events?[indexPath.row].hasOutrights ?? false)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events?.count ?? 0
    }
}
