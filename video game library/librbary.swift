//
//  librbary.swift
//  video game library
//
//  Created by Jake Dillon on 9/4/18.
//  Copyright © 2018 Jake Dillon. All rights reserved.
//

import Foundation

// this class will handle storing our array of games and also handle all the interactions with that array
class Library {
    
    //an empty array of game objects
    private var gameArray: [Game] = [Game(title: "Fire Pro Wrestling: World"), Game(title: "Far Cry 5"), Game(title: "WWF: No Mercy"), Game(title: "Saints Row"), Game(title: "Saw: the game")]
    
    // Mark:- Functions
    
    func addGames() {
        print("please enter password")
        var input: String? = nil
        
        repeat {
            let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            if line != "" {
                input = line
            } else {
                print("Invalid Input")
            }
        } while input == nil
        
        if input == "dirty caveman" {
            for index in 0..<gameArray.count {
                print("\(index). \(gameArray[index].title)")
            }
            var userInput = Int(readLine()!)
            
            while userInput == nil {
                print("invalid input, please use a usable index")
                userInput = Int(readLine()!)
            }
            gameArray.remove(at: userInput!)
        } else {
            print("wrong password YOU SUCK!!!!!")
        }
        print("Please enter the title of the game: ")
        
        var newGameTitle = readLine()!
        
        while newGameTitle == nil || newGameTitle == "" {
            print("invalid title please try again")
            newGameTitle = readLine()!
        }
        
        let game = Game(title: newGameTitle)
        gameArray.append(Game(title: newGameTitle))
    }
    
    func removeGame() {
        print("please enter password")
        var input: String? = nil
        
        repeat {
            let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            if line != "" {
                input = line
            } else {
                print("Invalid Input")
            }
        } while input == nil
        
        if input == "dirty caveman" {
        for index in 0..<gameArray.count {
            print("\(index). \(gameArray[index].title)")
        }
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("invalid input, please use a usable index")
            userInput = Int(readLine()!)
        }
        gameArray.remove(at: userInput!)
        } else {
            print("wrong password YOU SUCK!!!!!")
        }
    }
    func listAvailableGames() {
        
        for game in gameArray {
            if game.checkedIn{
                print(game.title)
            }
        }
        
    }
    func listUnavailableGames() {
        
        for game in gameArray {
            if game.checkedIn == false {
                print(game.title)
                if let dueDate = game.dueDate {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "MM-dd-yyyy"
                    print(dateFormatter.string(from: dueDate))
                }
            }
        }
        
    }
    func checkGameOut() {
        
        for index in 0..<gameArray.count {
            
            if gameArray[index].checkedIn == true {
            print("\(index). \(gameArray[index].title)")
            }
        }
        print("please enter the index of the game you wish to check out:")
        
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("invalid input, please enter a usable index")
            userInput = Int(readLine()!)
        }
        if gameArray[userInput!].checkedIn == false {
            print("game is already checked out")
        } else {
            
            gameArray[userInput!].checkedIn = false
            
            let currentCalendar = Calendar.current
            let dueDate = currentCalendar.date(byAdding: .day, value: 14, to: Date())
            gameArray[userInput!].dueDate = dueDate
            for game in gameArray {
                if game.checkedIn == false {
                    print(game.title)
                    print("Your game is due on")
                    if let dueDate = game.dueDate {
                        let dateFormatter = DateFormatter()
                        dateFormatter.dateFormat = "MM-dd-yyyy"
                        print(dateFormatter.string(from: dueDate))
                    }
                }
            }
        }
    }
    
    
    func checkGameIn() {
        for index in 0..<gameArray.count {
            if gameArray[index].checkedIn == false {
                
                
                print("\(index). \(gameArray[index].title)")
            }
        }
        print("please enter the index of the game you wish to check in:")
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("invalid input, please enter a usable index")
            userInput = Int(readLine()!)
        }
        if gameArray[userInput!].checkedIn == true {
            print("game is already checked in")
        } else {
            gameArray[userInput!].checkedIn = true
            gameArray[userInput!].dueDate = nil
            print("Your game has been checked in")
        }
    }
    
}





