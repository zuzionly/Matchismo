//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Nicholas on 13-7-2.
//  Copyright (c) 2013年 Nicholas. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id)init{
    self = [super init];
    
    if(self){
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank<= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [PlayingCard new];
                card.rank = rank;
                card.suit = suit;
                
                [self addCard:card atTop:YES];
            }
        }
    }
    
    return self;
}

@end
