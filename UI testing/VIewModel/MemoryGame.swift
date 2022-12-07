//
//  MemoryGame.swift
//  UI testing
//
//  Created by Jason Wang on 5/12/22.
//

import Foundation

struct MemoryGame<CardContent>{
    private (set) var cards: Array<Card>
    
    func choose(_ card: Card){
        
    }
    
    
    // for initilizing the cards
    init(numofpairsofcards: Int, createCardContent: (Int)-> CardContent){
        cards = Array<Card>()
        
        for pairIndex in 0..<numofpairsofcards{
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card{
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var test3: Int
    }
    
}
