//
//  GameController.m
//  Threelow
//
//  Created by Hyung Jip Moon on 2017-02-20.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (void)roll {

    [self currentScore];
}

- (void)currentScore {

    NSInteger score = 0;
    
    for (int i = 0; i < self.dice.count; i++) {
        
        Dice *aDice = [self.dice objectAtIndex:i];
        
        if (aDice.isOnHold != YES) {
            
            NSLog(@"\nDice %d roled %ld", i+1,(long)[aDice randomizeValue]);
            score++;
        }
        else {
            
            NSLog(@" Dice %i is still held at [%li]", i+1,(long)aDice.currentValue);
        }
    }
    NSLog(@" Score: %li", (long)score);
}

-(void)addToDiceArray:(NSArray *)dice {
    self.dice = dice;
}

- (void)resetDice {
    
    [self.heldDicesCollection removeAllObjects];
    
}

@end
