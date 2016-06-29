//
//  main.m
//  LHL-June.ContactList
//
//  Created by Asuka Nakagawa on 2016-06-28.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

// Controller
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        ContactList *newContactList = [[ContactList alloc] init];
        
//        NSLog(@"The MENU: What would you like to do next? new - Create a new contact, list - List all contacts, quit - Exit Application > _");
        
        while (YES) {
        
            NSString *userInput = [[InputCollector alloc] inputForPrompt:@"The menu: What would you like to do next? new - Create a new contact, list - List all contacts, show - Display user detail, quit - Exit Application > _"];
        
            if ([userInput containsString:@"quit"]) {
                // quit app
                NSLog(@"User quit app");
                break;
            }
            
            else if ([userInput containsString:@"list"]) {
                NSLog(@"*** LIST ***");
                [newContactList listOfContacts];
            }
            
            else if ([userInput containsString:@"new"]) {
                NSString *fullName = [[InputCollector alloc] inputForPrompt:@"Enter your full-name: "];
                NSLog(@"your name is %@", fullName);
                
                NSString *email = [[InputCollector alloc] inputForPrompt:@"Enter your email: "];
                NSLog(@"your email is %@", email);
                
                Contact *newContact = [[Contact alloc] initWithName:fullName email:email];
                [newContactList addContact:newContact];
            }
            else if ([userInput containsString:@"show"]) {
                // If a contact with that index/ID is found, display their details
                NSString *indexUserPick = [[InputCollector alloc] inputForPrompt:@"Enter index number: "];
                [newContactList displayContactIndex:indexUserPick];
            }
        }
        

    
    }
    return 0;
}
