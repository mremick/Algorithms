//
//  Union.h
//  Algorithms
//
//  Created by Matt Remick on 3/31/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Union : NSObject

- (void)unionTogether:(int)a andB:(int)b;
- (BOOL)connected:(int)a andB:(int)b;

@end
