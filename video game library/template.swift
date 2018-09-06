//
//  template.swift
//  video game library
//
//  Created by Jake Dillon on 9/6/18.
//  Copyright © 2018 Jake Dillon. All rights reserved.
//

//import Foundation
//func getAvailableGames() -> [Game] {
//    var availableGames = [Game]()
//    
//    for game in games {
//        if game.checkedIn {
//            availableGames.append(game)
//        }
//    }
//    
//    return availableGames
//}
//
//func checkGameOut() {
//    //We need to go through our gameArray, list out each game and its index, and take user input for which game they want to check out.
//    
//    // 0. Get available games
//    let availableGames = getAvailableGames()
//    
//    // 1. Print out available games
//    for index in 0..<availableGames.count {
//        print("\(index).\(availableGames[index].title)")
//    }
//    
//    // 2. Prompting user
//    print("Please enter the index of the game you wish to check out: ")
//    
//    // 3. Getting user input
//    var userInput = Int(readLine()!)
//    
//    // 4. Validate user input
//    while userInput == nil {
//        print("Invalid input. Please enter a usable index.")
//        userInput = Int(readLine()!)
//    }
//    
//    // 5. Check Game in.
//    availableGames[userInput!].checkedIn = false
//    
//    //We also need to set the due date for the game.
//    let currentCalendar = Calendar.current //This gets the current calendar for the user
//    let dueDate = currentCalendar.date(byAdding: .day, value: 14, to: Date()) //This generates a new Date object 2 weeks in the future by adding 14 days to the current date
//    availableGames[userInput!].dueDate = dueDate //Set the due date of the game being checked out to the new date 2 weeks in the future
//    
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "MM/dd/yyyy"
//    print("This game is due on: \(dateFormatter.string(from: dueDate!))")
//    
//}
