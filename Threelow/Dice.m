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
        
        [self randomizeValue];
        
    }
    return self;
}


// Added a method to randomize the value from 1 to 6
- (void) randomizeValue {
    
    self.currentValue = (NSInteger)arc4random_uniform(6) + 1;

}
@end

