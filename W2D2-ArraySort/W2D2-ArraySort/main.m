//
//  main.m
//  W2D2-ArraySort
//
//  Created by Tim Mitra on 6/16/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    // 1 .make an array
    NSArray *words = @[@"eeeeeAAbfdf",
                       @"Everything",
                       @"news to me",
                       @"timepiece",
                       @"egg",
                       @"eggs",
                       @"paper",
                       @"e",
                       @"facebook",
                       @"painting",
                       @"231 thurlow st",
                       @"99 bottles",];
    
    
    NSLog(@"Strings: %@", words); // prints description
    
    NSArray *alphabeticalArray = [words sortedArrayUsingComparator:^(NSString *str1, NSString *str2) {
      
      return [str1 caseInsensitiveCompare:str2];
    }                                  ];
    
    NSLog(@"Alphabetical: %@", alphabeticalArray);
    
    NSArray *byLength = [words sortedArrayUsingComparator:^(NSString *str1, NSString *str2){
      return (NSComparisonResult)(str2.length - str1.length);
                          }];
    
    NSLog(@"By Length: %@", byLength);
    
    // Sorted by Last Char
    NSArray* stringsByLastChar =
    [words sortedArrayUsingComparator:^(NSString* str1, NSString* str2) {
      
      return [[str1 substringFromIndex:str1.length]
              caseInsensitiveCompare:[str2 substringFromIndex:str2.length]];
    }];
    
    NSLog(@"By Last Char: %@", stringsByLastChar);
    
    
    // Sorted by Occurrences of 'e'
    NSString* charStr = @"e";
    // replaceOccurrencesOfString:withString:options:range: will return the number of characters replaced in a NSMutableString.
    
    // NSComparisonResult indicate how itmes in a request are ordered
    NSArray *byCertainChar = [words sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2){
      
      NSUInteger count1 = [obj1.mutableCopy replaceOccurrencesOfString:charStr withString:charStr options:(NSStringCompareOptions)0 range:NSMakeRange(0, obj1.length)];
      
      NSUInteger count2 = [obj2.mutableCopy replaceOccurrencesOfString:charStr withString:charStr options:(NSStringCompareOptions)0 range:NSMakeRange(0, obj2.length)];
      
      return (count2 - count1);
      
    }];

    NSLog(@"By 'e': %@", byCertainChar);
    

  }
    return 0;
}
