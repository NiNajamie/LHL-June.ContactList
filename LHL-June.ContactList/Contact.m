//
//  Contact.m
//  LHL-June.ContactList
//
//  Created by Asuka Nakagawa on 2016-06-28.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email
{
    self = [super init];
    if (self) {
        
        // self.name = _name; == empty = empty
        self.name = name;
        self.email = email;
    }
    return self;
}

@end
