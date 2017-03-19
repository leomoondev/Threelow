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
#import "GameController.h"

int main(int argc, const char * argv[]) {

    InputCollector *inputCollector = [[InputCollector alloc] init];
    GameController *gameController = [[GameController alloc] init];
    
    //Add five instances of the Dice class, and randomize their values and print them
    Dice *diceOne = [[Dice alloc] init];
    Dice *diceTwo = [[Dice alloc] init];
    Dice *diceThree = [[Dice alloc] init];
    Dice *diceFour = [[Dice alloc] init];
    Dice *diceFive = [[Dice alloc] init];
    
    bool rollDiceAgain = true;

    [gameController addToDiceArray: @[diceOne, diceTwo, diceThree, diceFour, diceFive]];

    printf("-----------------------------");
    printf("Type 'roll' to start a game.");
    printf("Type 'quit' to exit a game.");
    printf("Type 'reset' to reset a game.");
    printf("-----------------------------");
    
        while (1) {
            
            NSString *userInput = [inputCollector inputForPrompt:@"Type 'roll' to start a game."];
            
            if ([[userInput lowercaseString] isEqualToString:@"roll"]) {
                
                [gameController roll];
                
                 NSString *userHoldInput = [inputCollector inputForPrompt:(@"\nWould you like to 'hold' dice? y/n")];
                
                if([userHoldInput isEqualToString:@"y"]){
                    NSString *userIndexInput = [inputCollector inputForPrompt:(@"\nEnter the index for the Dice you want to hold")];
                    int indexOfArray = [ userIndexInput intValue];
                    Dice *aDice = [gameController.dice objectAtIndex:indexOfArray-1];
                    aDice.isOnHold = YES;
                    NSLog(@"[%d]", indexOfArray);
                    
                    NSString *userHoldSecondInput = [inputCollector inputForPrompt:(@"\nKeep held or unhold y/n")];
                    if([userHoldSecondInput isEqualToString:@"y"]){
                        //rollAgain = true;
                        [gameController roll];
                        
                    }else{
                        aDice.isOnHold = NO;
                        
                    }
                    rollDiceAgain = true;
            }
            else if ([[userInput lowercaseString] isEqualToString:@"reset"]) {
                [gameController resetDice];
                rollDiceAgain = true;
            }
            else if ([[userInput lowercaseString] isEqualToString:@"quit"]) {
                exit(0);
            }
        }
    return 0;
        }
}
