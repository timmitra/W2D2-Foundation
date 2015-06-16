//
//  main.m
//  W2D2-Collections
//
//  Created by Tim Mitra on 6/15/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    NSString *my = @"hello";
    
    NSArray *array = @[@"one", @"two"];
    
    NSNumber *num = @100;
    
    // NSArray
    NSArray *peanuts = @[@"Snoopy", @"Charlie", @"Linus", @"Lucy"];
    NSLog(@"the second member is %@", peanuts[1]);
    
    // Using NSDate convenience methods
    NSDate *now = [NSDate date];
    NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
    NSString *message = @"I'm in an array!";

    NSArray *myStuff = @[now, message, tomorrow];
    NSLog(@"the second member is %@", myStuff[1]);
    
    // old way to make and array
    NSArray *fruits = [[NSArray alloc] initWithObjects:@"banana", @"orange", @"apple", @"tomato", nil];
    
    // the only way to make it mutable
    NSMutableArray *fruitBasket = [[NSMutableArray alloc] initWithObjects:@"pineapple", @"lemon", @"pear", nil];
    
    // add an item
    [fruitBasket addObject:now];
    NSLog(@"The last object is %@", fruitBasket[3]);
    
    // remove an item
    [fruitBasket removeObjectAtIndex:3];
    //NSLog(@"The last object is %@", fruitBasket[3]);
    
    NSMutableArray *moreFruit = [NSMutableArray arrayWithArray:fruits];
    NSLog(@"the second member is %@", moreFruit[1]);

    //looping
    for (int i = 0; i < peanuts.count; i++) {
      NSLog(@"index %i: name: %@", i, [peanuts objectAtIndex: i]);
    }
    
    for (NSString * guys in peanuts) {
      NSLog(@"%@", guys);
    }
    

    
//    for (NSString *name in peanuts) {
//      NSLog(@"%@", name);
//    }
    
    NSMutableDictionary *myDict = [NSMutableDictionary dictionary];
    
    // store three entries
    
    [myDict setObject:@"What type of thing do we keep in a dictionary" forKey:@"an object"];
    [myDict setObject:@"How do we make use of a protocol" forKey:@"we conform"];
    //[myDict setObject:<#(id)#> forKey:<#(id<NSCopying>)#>]
    
    NSLog(@"an object: %@", [myDict objectForKey: @"an object"]);
    NSLog(@"we conform: %@", [myDict objectForKey: @"we conform"]);
//    
    
    NSDictionary *notherDict = [NSDictionary dictionaryWithObjectsAndKeys:@"one" , @"first", @"two", @"secnond" , nil];
    
//    NSDictionary *myNextDict = [NSDictionary dictionaryWithObjectsAndKeys:@"an object", @"What type of thing do we keep in a dictionary", @"we conform" , @"How do we make use of a protocol", nil];
//    
    NSDictionary *myLiteralDict = @{@"an object": @"What type of thing do we keep in a dictionary", @"we conform" : @"How do we make use of a protocol"};
    
    for (NSString *members in notherDict) {
      NSLog(@"%@: %@", [notherDict objectForKey:members], members);
    }
    
    // makes a mutable dictionary from a literal dictionary
    NSMutableDictionary *myMutableDict = [ @{ @"one" : @"first", @"two": @"second" } mutableCopy ];
    
//    NSMutableSet *set1 = [NSMutableSet setWithObjects:@1, @2, @3, @6, @9, nil];
//    NSSet *set2 = [NSSet setWithObjects:@-5, @100, @3, @9, 5, nil];
//    
//    if ([set1 isEqualToSet:set2]) {
//      NSLog(@"eys");
//    }
//
//    if ([set1 containsObject:@10]) {
//      NSLog(@"yes");
//    } else {
//      NSLog(@"no");
//    }
//    
//    [set1 addObject:@4];
//    
//    [set1 removeObject:@3];
//    
////    [set1 intersectSet:set2];
////    for (NSNumber *num in set1) {
////      NSLog(@"%@", num);
////    }
//    
//    [set1 unionSet:set2];
//    
//    for (NSNumber *union1 in set1) {
//      NSLog(@"%@", union1);
//    }


  }
    return 0;
}
