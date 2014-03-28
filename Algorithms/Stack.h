//
//  Stack.h
//  Algorithms
//
//  Created by Matt Remick on 3/21/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"


@interface Stack : NSObject

@property (strong,nonatomic) Node *top;
@property (strong,nonatomic) Stack *minStack; 
- (int)pop;
- (void)push:(int)item;
- (int)peek;
- (int)min;
- (void)printStack; 

@end
