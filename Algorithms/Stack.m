//
//  Stack.m
//  Algorithms
//
//  Created by Matt Remick on 3/21/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "Stack.h"

@implementation Stack

-(int)pop
{
    if (self.top != nil) {
        int item = self.top.data;
        self.top = self.top.next;
        return item;
    }
    
    return 0;
}

- (void)push:(int)item
{
    Node *t = [[Node alloc] initWithData:item];
    
    if (!self.top) {
        self.top = t;
        self.top.min = item;
    } else {
        
        if (item <= self.top.min) {
            t.min = item;
        } else {
            t.min = self.top.min;
        }
        
        t.next = self.top;
        self.top = t;
    }
}

- (int)peek
{
    return self.top.data;
}

- (int)min
{
    return self.top.min; 
}

- (void)printStack;
{
    Node *n = self.top;
    
    while (n != nil) {
        NSLog(@"|| %d ||",n.data);
        n = n.next; 
    }
}










@end
