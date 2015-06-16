//
//  main.m
//  W2D2-Strings
//
//  Created by Tim Mitra on 6/15/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    NSString *string1 = @"This is my first string";
    
    NSString *string2 = @"This is another string";
    
   // NSDate * myDate = [NSDate date];
    
    
    
    // Count the number of characters
    NSLog (@"Length of string1: %lu", [string1 length]);
    
    // Copy one string to another
    NSString *result;
    result = [NSString stringWithString: string1];
    NSLog (@"copy: %@", result);
    
    // Copy one string to the end of another
    string2 = [string1 stringByAppendingString: string2];
    NSLog (@"Concatentation: %@ ", string2);
    
    // Test if 2 strings are equal
    if ([string1 isEqualToString: result] == YES)
      NSLog (@"string1 == result");
    else
      NSLog (@"string1 != result");
 
    // Test if one string is <, == or > than another
    NSComparisonResult compareResult;
    compareResult = [string1 compare: string2];
    
    if (compareResult == NSOrderedAscending)
      NSLog (@"string1 < string2");
    else if (compareResult == NSOrderedSame)
      NSLog (@"string1 == string2");
    else // must be NSOrderedDescending
      NSLog (@"string1 > string2");
 
    // Convert a string to uppercase
    result = [string1 uppercaseString];
    NSLog (@"Uppercase conversion: %s", [result UTF8String]);
 
    // Convert a string to lowercase
    result = [string1 lowercaseString];
    
    NSLog (@"Lowercase conversion: %@", result);
    NSLog (@"Original string: %@", string1);
    
    
    // Extract first 3 chars from string
    result = [string1 substringToIndex: 3];
    NSLog (@"First 3 chars of string1: %@", result);
    
    // Extract chars to end of string starting at index 5
    result = [string1 substringFromIndex: 5];
    NSLog (@"Chars from index 5 of string1: %@", result);
    
    // Extract chars from index 8 through 13 (6 chars)
    result = [[string1 substringFromIndex: 8] substringToIndex: 6];
    NSLog (@"Chars from index 8 through 13: %@", result);
    
    // An easier way to do the same thing
    result = [string1 substringWithRange: NSMakeRange (8, 6)];
    NSLog (@"Chars from index 8 through 13: %@", result);
    
    // Create a mutable string
    NSMutableString *mutableString = [NSMutableString stringWithString: string1];
    NSLog(@"%@", mutableString);
    
    // Insert Characters
    [mutableString insertString: @" a mutable" atIndex: 7];
    NSLog(@"%@", mutableString);
    
    // delete a substring based on range
    [mutableString deleteCharactersInRange: NSMakeRange (18, 9)];
    NSLog(@"%@", mutableString);
    
    // append
    [mutableString appendString: @", eh?"];
    NSLog(@"%@", mutableString);
   
    
    NSString *myPath = @"/Users/tmitra/Documents/dev/Lighthouse/videos.txt";
    
    NSFileManager *filemanger = [[NSFileManager alloc] init];
    
    if ([filemanger fileExistsAtPath:myPath]) {
      NSLog(@"Yup! the file is there.");
    }
    
    NSString *homeDir = NSHomeDirectory();
    NSLog(@"my home dir is at %@", homeDir);


    NSFileManager *filemanager = [NSFileManager defaultManager];
    
    NSURL *myDocs = [filemanager URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
    
    NSLog(@"my docs are in %@", myDocs);
    

    NSString *myDevDir = [homeDir stringByAppendingPathComponent:@"dev"];

    NSString *lighthouseDir = [myDevDir stringByAppendingPathComponent:@"/Lighthouse"];
    
    NSLog(@"my Lighthouse dir is at %@", lighthouseDir);


  }
    return 0;
}
