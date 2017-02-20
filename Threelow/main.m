//
//  main.m
//  Threelow
//
//  Created by Hyung Jip Moon on 2017-02-19.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //Added five instances of the Dice class, and randomize their values and print them
        Dice *diceOne = [[Dice alloc] init];
        Dice *diceTwo = [[Dice alloc] init];
        Dice *diceThree = [[Dice alloc] init];
        Dice *diceFour = [[Dice alloc] init];
        Dice *diceFive = [[Dice alloc] init];
        
        NSArray *storeDice = @[diceOne, diceTwo, diceThree, diceFour, diceFive];;

        
        if(storeDice.count == 0) {
            // DO Nothing
        }
        else {
            for (int i = 0; i < storeDice.count; ++i) {
                
                [[storeDice objectAtIndex:i] printDice];
            }
        }
        
    }
    return 0;
}
