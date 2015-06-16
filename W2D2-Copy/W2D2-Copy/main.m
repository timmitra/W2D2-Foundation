//
//  main.m
//  W2D2-Copy
//
//  Created by Tim Mitra on 6/16/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
                                 @"one", @"two", @"three", @"four", nil];
    NSMutableArray *dataArray2;
    
    // simple assignment
    dataArray2 = dataArray;
    [dataArray2 removeObjectAtIndex: 0];
    NSLog (@"dataArray: ");
    
    for ( NSString *elem in dataArray )
      NSLog (@" %@", elem);
    NSLog (@"dataArray2: ");
    
    for ( NSString *elem in dataArray2 )
      NSLog (@"dataArray: ");
    
    // try a copy, then remove the first element from the copy
    /*create a mutable copy of dataArray and assign the resulting copy to
     dataArray2.This creates two distinct mutable arrays in memory, both containing three
     elements. Now when you remove the first element from dataArray2, it has no effect on
     the contents of dataArray, as verified by the last output for dataArray.*/
    
    dataArray2 = [dataArray mutableCopy];
    
    [dataArray2 removeObjectAtIndex: 0];
    NSLog (@"dataArray: ");
    
    for ( NSString *elem in dataArray )
      NSLog (@" %@", elem);
    NSLog (@"dataArray2: ");
    
    for ( NSString *elem in dataArray2 )
      NSLog (@" %@", elem);
  }
    return 0;
}
