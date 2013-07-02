//
//  PlayingCard.m
//  Matchismo
//
//  Created by Nicholas on 13-7-2.
//  Copyright (c) 2013年 Nicholas. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit=_suit;

+ (NSArray *)rankStrings{
    static NSArray *rankStrings = nil;
    
    if (!rankStrings) {
        rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    }
    
    return rankStrings;
}

+ (NSArray *)validSuits{
    static NSArray *validSuits = nil;
    
    if (!validSuits) {
        validSuits = @[@"♠",@"♣",@"♥",@"♦"];
    }
    
    return validSuits;
}

+ (NSUInteger)maxRank{
    
    return [self rankStrings].count -1;
}

- (NSString *)contents{
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

- (void)setSuit:(NSString *)suit{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit{
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank{
    if (rank<=[PlayingCard maxRank]) {
        _rank = rank;
    }
}



@end
