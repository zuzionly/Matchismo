//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Nicholas on 13-7-2.
//  Copyright (c) 2013年 Nicholas. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UIButton *cardButton;
@property (strong, nonatomic) Deck *deck;

@end

@implementation CardGameViewController

- (Deck *)deck{
    if (!_deck) {
        _deck = [PlayingCardDeck new];
    }
    return _deck;
}

- (void)setCardButtons:(NSArray *)cardButtons{
    _cardButtons = cardButtons;
    
    for (UIButton *cardButton in cardButtons) {
        Card *card = [self.deck drawRandomCard];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
    }
    
}


- (IBAction)flipCard:(UIButton *)sender {
    
    sender.selected = !sender.isSelected;

}



@end
