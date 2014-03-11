//
//  ViewController.m
//  Algorithms
//
//  Created by Matt Remick on 3/10/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "ViewController.h"
#import "ArraysAndStrings.h"
#import "Node.h"
#import "LinkedList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *hello1 = [NSString stringWithFormat:@"lhelo"];
    NSString *hello = [NSString stringWithFormat:@"hello"];
    NSString *randomString = [NSString stringWithFormat:@"oh hey there"];
    
    //[ArraysAndStrings uniqueCharacter:alphabet];
    //NSLog(@"%@",[ArraysAndStrings reverseString:hello]);
    //NSLog(@"%d",[ArraysAndStrings isPermutation:hello andAnotherString:randomString]);
    //NSLog(@"%@",[ArraysAndStrings stringCompression:@"aaabbbccc"]);
    
    
    LinkedList *list = [[LinkedList alloc] init];
    Node *node300 = [[Node alloc] initWithData:300];
    
    
    for (int i = 0; i < 30; i++) {
        
//        if (i == 15) {
//            [list addNodeToBeginning:node300];
//        }
        
        Node *node = [[Node alloc] initWithData:arc4random() % 5];
        [list addNodeToBeginning:node];
    }
    
//    Node *node69 = [[Node alloc] initWithData:69];
//    [list addNodeToBeginning:node69];
//    
//    Node *node100 = [[Node alloc] initWithData:100];
//    
//    [list addNodeToEnd:node100];
    
    [list printNodes];
    
//    Node *searchedNode = [list searchForNode:node69];
    
//    NSLog(@"Search:%d",searchedNode.data);
    
    NSLog(@"--------------------------------------");
    
//    [list deleteNode:node300];
    
    NSMutableArray *arrayChecker = [NSMutableArray new];
    
    
    
    [list removeDuplicatesLinkedClass:arrayChecker];
    
    
    [list printNodes];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
