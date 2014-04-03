//
//  TreeNode.h
//  Algorithms
//
//  Created by Matt Remick on 4/1/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TreeNode : NSObject

- (id)initWithData:(int)data; 

@property (strong,nonatomic) TreeNode *leftNode;
@property (strong,nonatomic) TreeNode *rightNode;

@property (nonatomic) int data;
@property (nonatomic) int depth;

@end
