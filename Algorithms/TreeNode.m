//
//  TreeNode.m
//  Algorithms
//
//  Created by Matt Remick on 4/1/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "TreeNode.h"

@interface TreeNode()

@end

@implementation TreeNode

- (id)initWithData:(int)data;
{
    if (self = [super init]) {
        self.data = data;
        self.leftNode = nil;
        self.rightNode = nil; 
    }
    
    return self;
}


@end
