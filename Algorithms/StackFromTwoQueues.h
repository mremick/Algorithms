//
//  StackFromTwoQueues.h
//  Algorithms
//
//  Created by Matt Remick on 4/9/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

@interface StackFromTwoQueues : NSObject

@property (strong,nonatomic) Stack *enqueueStack;
@property (strong,nonatomic) Stack *dequeueStack;

- (void)enqueue:(int)data;
- (int)dequeue;

@end
