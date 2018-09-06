//
//  template 2.swift
//  video game library
//
//  Created by Jake Dillon on 9/6/18.
//  Copyright © 2018 Jake Dillon. All rights reserved.
//

//import Foundation
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
//    var index: Int? = nil
//    
//    // 4. Validate user input.
//    repeat {
//        // 1. Get user input
//        var userInput = Int(readLine()!)
//        
//        // 2. Validate user input is an Int
//        while userInput == nil {
//            print("Invalid input. Please enter a valid index.")
//            userInput = Int(readLine()!)
//        }
//        
//        // 3. Validate user input is within array bounds.
//        if userInput! >= 0 && userInput! < availableGames.count {
//            // If input is valid, set index equal to user input.
//            index = userInput!
//        } else {
//            // If input is not valid, tell the user and let the while loop continue.
//            print("Invalid input. Please enter a valid index.")
//        }
//    } while index == nil
//    
//    // 5. Check Game in.
//    availableGames[index!].checkedIn = false
//    
//    //We also need to set the due date for the game.
//    let currentCalendar = Calendar.current //This gets the current calendar for the user
//    let dueDate = currentCalendar.date(byAdding: .day, value: 14, to: Date()) //This generates a new Date object 2 weeks in the future by adding 14 days to the current date
//    availableGames[index!].dueDate = dueDate //Set the due date of the game being checked out to the new date 2 weeks in the future
//    
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "MM/dd/yyyy"
//    print("This game is due on: \(dateFormatter.string(from: dueDate!))")
//    
//}
