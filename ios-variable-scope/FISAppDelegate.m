//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    NSMutableArray *arrayCopy = [[NSMutableArray alloc] initWithArray:array];
    [arrayCopy addObject:(string)];
    
    return arrayCopy;
}

- (NSUInteger)countOfUppercaseStringsInArray: (NSArray *)array {
    NSUInteger occurrences = 0;
        for(NSString *string in array){
            
NSString *isUpperCase = [string uppercaseString];
            occurrences += ([string isEqualToString:isUpperCase]?1:0);
}
    NSLog(@"number of occurences %lu", (unsigned long)occurrences);
    return occurrences;
}

    
- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
        [array removeAllObjects];
}
 
@end


/*
 
 //This is my earlier failed attempt using a BOOL//
 NSUInteger countUp = 0;
 NSArray *arrayOfStuff;
 NSString *myString;
 
 for (NSUInteger i = 0; i < [arrayOfStuff count]; i++) {
 
 NSString *isUpperCase = [myString uppercaseString];
 BOOL stringIsEqualToUpperCase = [myString isEqualToString:isUpperCase];
 
 if (stringIsEqualToUpperCase == 1) {
 countUp += 1;
 NSLog(@"countUp: %li", countUp);
 }
 else {
 countUp += 0;
 }
 
 }
 NSLog(@"countUp: %li", countUp);
 return countUp;
 }
 */
