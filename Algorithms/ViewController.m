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
#import "Sorts.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSString *hello1 = [NSString stringWithFormat:@"lhelo"];
//    NSString *hello = [NSString stringWithFormat:@"hello"];
//    NSString *randomString = [NSString stringWithFormat:@"oh hey there"];
    
    //[ArraysAndStrings uniqueCharacter:alphabet];
    //NSLog(@"%@",[ArraysAndStrings reverseString:hello]);
    //NSLog(@"%d",[ArraysAndStrings isPermutation:hello andAnotherString:randomString]);
    //NSLog(@"%@",[ArraysAndStrings stringCompression:@"aaabbbccc"]);
    
    
    LinkedList *list = [[LinkedList alloc] init];
    LinkedList *list2 = [[LinkedList alloc] init];
    Node *nod3 = [[Node alloc] initWithData:3];

    NSMutableArray *randomArray = [NSMutableArray new];
    
    for (int i = 1; i < 30; i++) {
        
        NSNumber *number = [NSNumber numberWithInt:arc4random() % 30];
        [randomArray addObject:number];
        
    }
    
    NSLog(@"BEFORE: %@",randomArray);
    
    NSLog(@"AFTER: %@",[Sorts quickSort:randomArray]);
    
    
//    [LinkedList addTwoLinkedLists:list andList2:list2]; 

//    [list printNodes];
//    
//    NSLog(@"----------------------------------");
//    
//    [list partitionLinkedListBasedOnX:10];
//    
//    [list printNodes];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
