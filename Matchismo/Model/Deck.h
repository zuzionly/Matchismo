//
//  Deck.h
//  Matchismo
//
//  Created by Nicholas on 13-7-2.
//  Copyright (c) 2013年 Nicholas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *)drawRandomCard;
@end
