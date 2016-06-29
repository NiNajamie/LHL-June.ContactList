//
//  ContactList.m
//  LHL-June.ContactList
//
//  Created by Asuka Nakagawa on 2016-06-28.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "ContactList.h"


@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(Contact *)newContact {
    [self.contactList addObject:newContact];
}

// displaying contacts using following format #: <full name> ()
- (void)listOfContacts {
    for (int i = 0; i < [self.contactList count]; i++) {
        Contact *object = self.contactList[i];
        
        // trimming the newLines
        NSString *trimmedName = [object.name stringByTrimmingCharactersInSet:
                                   [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSString *trimmedEmail = [object.email stringByTrimmingCharactersInSet:
                                 [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSLog(@"#%d: <%@> (%@)",i, trimmedName, trimmedEmail);
    }
}


- (void)displayContactIndex: (NSString *)indexString {
    
    NSInteger index = [indexString integerValue];
    if (index < [self.contactList count]) {
        NSLog(@"The detail of the user: %ld", (long)index);
        Contact *user = self.contactList[index];
        NSLog(@"User Name: %@", user.name);
        NSLog(@"User Email: %@", user.email);
    }
    else {
        NSLog(@"The user not found.");
    }
}


@end
