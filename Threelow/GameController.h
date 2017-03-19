//
//  GameController.h
//  Threelow
//
//  Created by Hyung Jip Moon on 2017-02-20.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic) NSArray *dice;
@property (nonatomic) NSMutableSet *heldDicesCollection;

- (void)addToDiceArray:(NSArray *) dice;

- (void)currentScore;
- (void)roll;
- (void)resetDice;

@end
