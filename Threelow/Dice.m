//
//  Dice.m
//  Threelow
//
//  Created by Hyung Jip Moon on 2017-02-19.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    if (self = [super init]) {
        
        self.currentValue = [self randomizeValue];
        self.isOnHold = false;
    }
    
    return self;
}

// Method to randomize the value from 1 to 6
- (NSInteger) randomizeValue {
    
    self.currentValue = (NSInteger)arc4random_uniform(6) + 1;
    
    if(self.currentValue == 1) {
        self.currentValue = 1;
    }
    else if(self.currentValue == 2) {
        self.currentValue = 2;
    }
    else if(self.currentValue == 3) {
        self.currentValue = 3;
    }
    else if(self.currentValue == 4) {
        self.currentValue = 4;
    }
    else if(self.currentValue == 5) {
        self.currentValue = 5;
    }
    else if(self.currentValue == 6) {
        self.currentValue = 6;
    }
    return self.currentValue;
}

@end
