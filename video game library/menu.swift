//
//  menu.swift
//  video game library
//
//  Created by Jake Dillon on 8/30/18.
//  Copyright © 2018 Jake Dillon. All rights reserved.
//

import Foundation
class Menu{

   
    var shouldQuit = false
    
    let library = Library() //Create a new instance for the new library class
    
    func go(){
        help()
        repeat{
            
            var input = getInput()
            
            while validateInput(input) == false {
                print("Invalid input")
                input = getInput()
            }
           handleInput(input)
        } while !shouldQuit
    }
    func help() {
    print("""
    Menu
    1. Add Game
    2. Remove Game
    3. List Available Games
    4. Check Out Games
    5. Check in Games
    6. List Checked Out Games
    7. Help
    8. Quit
    """)
    }
    func handleInput(_ input: String) {
        switch input {
        case "1":
          library.addGames()
            help()
        case "2":
            library.removeGame()
            help()
        case "3":
            library.listAvailableGames()// call the library's avaiable games
            help()
        case "4":
            library.checkGameOut()
            help()
        case "5":
            library.checkGameIn()
            help()
        case "6":
           library.listUnavailableGames()
            help()
        case "7":
            help()
        case "8":
            quit()
        case "9":
            print("Congrats you have a free coupon for one back from Big Mike")
            help()
        default:
            break
        }
    }
    func quit() {
        shouldQuit = true
        print("Thanks for using the video game library")
    }
    func validateInput(_ input: String) -> Bool {
        let menuOptions = Array(1...9)
        
        guard let number = Int(input) else { return false}
        return menuOptions.contains(number)
    }
    func getInput()-> String {
        var input: String? = nil
        
        repeat {
            let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            if line != "" {
                input = line
            } else {
                print("Invalid Input")
            }
        } while input == nil
        return input!
    }
}









