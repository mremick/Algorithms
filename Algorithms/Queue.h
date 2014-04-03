//
//  Queue.h
//  Algorithms
//
//  Created by Matt Remick on 3/28/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Queue : NSObject

@property (strong,nonatomic) Node *first;
@property (strong,nonatomic) Node *last;

- (void)enqueue:(int)data;
- (int)dequeue;
- (BOOL)isEmpty;
- (void)printQueue;

@end
