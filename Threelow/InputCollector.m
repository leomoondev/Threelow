//
//  InputCollector.m
//  Threelow
//
//  Created by Hyung Jip Moon on 2017-02-19.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString *)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    return inputString;
    
}

@end
