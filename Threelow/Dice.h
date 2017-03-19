//
//  Dice.h
//  Threelow
//
//  Created by Hyung Jip Moon on 2017-02-19.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) NSInteger currentValue;
@property (nonatomic) bool isOnHold;

- (NSInteger) randomizeValue;

@end
