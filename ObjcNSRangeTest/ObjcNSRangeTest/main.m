//
//  main.m
//  ObjcNSRangeTest
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *string = @"lorem ipsum dolor sit amet";
        NSRange range = [string rangeOfString:@"ipsum"];
        // {.location=6, .length=5}
        NSLog(@"Location %lu",range.location); // index of start string ipsum
        NSLog(@"Lenth %lu", range.length);// lengh of string ipsum

        NSString *substring = [string substringWithRange:range];
        NSLog(@"Substring %@",substring); // @"ipsum"
        
        // There isnt contains. Instead use NSNotFound
        NSString *input = @"Drink water";
        NSString *findString = @"Drink";
        if ([input rangeOfString:findString].location != NSNotFound) {
            NSLog(@"found string");
        }else{
            NSLog(@"NOT found string");
        }
        
        //Converting Between NSString * & NSRange
        //NSStringFromRange: Returns a string representation of a range.
        NSRange range2 = NSMakeRange(3, 4);
        NSString *string2 = NSStringFromRange(range2); // @"{3,4}"
        NSLog(@"converted range: %@", string2 );
        
        //NSRangeFromString: Returns a range from a textual representation.
        NSString *string3 = @"{1,5}";
        NSRange range3 = NSRangeFromString(string3);
        NSLog(@"converted string: %lu", range3.location ); // {.location=1, .length=5}
    }
    return 0;
}
