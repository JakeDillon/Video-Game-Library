//
//  add games.swift
//  video game library
//
//  Created by Jake Dillon on 8/30/18.
//  Copyright © 2018 Jake Dillon. All rights reserved.
//

import Foundation
// fire pro wrestling: world, far cry 4, wwf: no mercy, saints row, saints row 2, saints row the third, guitar hero, nhl '18, god of war,
// data model that represents our games that will be stored in the library
class Game {
    // this stores the title of the game
    var title: String
    // going to set this true by default since we're going to assume its checked in
    var checkedIn = true
    // optional because if a game isnt checked it shouldnt have a due date
    var dueDate: Date?
    //Since checkedIn has a default value and dueDate is an opitonal, the only value that we have to initializenis the title
    init(title: String) {
        self.title = title
    }
}
