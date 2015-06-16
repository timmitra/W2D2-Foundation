//
//  main.m
//  W2D2-Numbers
//
//  Created by Tim Mitra on 6/15/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    NSNumber *intNumber;
    
    intNumber = [NSNumber numberWithInteger: 123];
    
    NSInteger myInt; // not an object but a typedef
    
    myInt = [intNumber integerValue];
    NSLog(@"%li", (long)myInt); // cast the NSNumber myInt to a long
    
    NSNumber *myNumber = [NSNumber numberWithLong: 0xabcdef];
    NSLog(@"%lx", [myNumber longValue]);
    
    myNumber = [NSNumber numberWithChar: 'F'];
    NSLog(@"%c", [myNumber charValue]);
    NSLog(@"%ld", (long)[myNumber integerValue]);

    NSNumber *floatNumber = [NSNumber numberWithFloat: 123.576];
    NSLog(@"%g", [floatNumber floatValue]);
    
    myNumber = [NSNumber numberWithDouble: 12357e+16];
    NSLog(@"%lg", [myNumber doubleValue]);
    
    if ([intNumber isEqualToNumber: floatNumber]) {
      NSLog(@"The numbers are equal");
    } else {
      NSLog(@"The numbers are not equal");
    }
    
    if ([intNumber compare: myNumber] == NSOrderedAscending) {
      NSLog(@"First number is less than the second");
    }
    
 
  }
    return 0;
}
