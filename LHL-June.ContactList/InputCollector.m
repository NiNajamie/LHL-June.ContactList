//
//  InputCollector.m
//  LHL-June.ContactList
//
//  Created by Asuka Nakagawa on 2016-06-28.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

// get user input
- (NSString *)inputForPrompt:(NSString *)promptString {
    
    // display the promptSting
    NSLog(@"%@", promptString);
    
    char inputChars[20];
    fgets(inputChars, 20, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    return inputString;
}


@end
