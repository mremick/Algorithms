//
//  Union.m
//  Algorithms
//
//  Created by Matt Remick on 3/31/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "Union.h"

@interface Union()

@property (strong,nonatomic) NSMutableArray *index;

@end

@implementation Union

- (void)unionTogether:(int)a andB:(int)b
{
//    int pid = (int)self.index[a];
//    int quid = (int)self.index[b];
//    
//    for (int i = 0; i < self.index.count; i++) {
//        if ((int)self.index[i] == pid) {
//            (int)self.index[i] = quid;
//        }
//    }
}

- (BOOL)connected:(int)a andB:(int)b
{
    return [self.index[a] isEqual:self.index[b]];
}


@end
