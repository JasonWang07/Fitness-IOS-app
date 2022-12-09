//
//  EmojiMemoryGame.swift
//  UI testing
//
//  Created by Jason Wang on 5/12/22.
//

import SwiftUI

class EmojiMemoryGame{
    //private(set) var model: MemoryGame<String> //other classes and structs can look at the model but can't change it
    
    static let emojis = ["A","B","C","D"]
    
    static func createMemoryGame()-> MemoryGame<String>{
        
        MemoryGame<String>(numofpairsofcards: 4, createCardContent: { pairindex in emojis[pairindex]})
                                                 // a function that takes an int and return a string
                                                 // original: {(index:Int) -> String in return "A"}
    }
    
    
    private var model: MemoryGame<String> = createMemoryGame()
                                            //因為是 initilize by static func 所以不須加上emojimemorygame.
    
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
}
