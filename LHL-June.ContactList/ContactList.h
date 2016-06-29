//
//  ContactList.h
//  LHL-June.ContactList
//
//  Created by Asuka Nakagawa on 2016-06-28.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contactList;

- (void)addContact:(Contact *)newContact;

- (void)listOfContacts;

// param type (Contact *)-> (NSString *)
- (void)displayContactIndex: (NSString *)contact;

@end
