//
//  PlayingCardDeckFile.swift
//  PlayingCard
//
//  Created by Alexander Abanshin on 24.05.2024.
//

import Foundation

struct PlayingCardDeck {
    var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
   mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            let index = Int.random(in: 0..<cards.count)
            return cards.remove(at: index)
        } else {
            return nil
        }
    }
}
