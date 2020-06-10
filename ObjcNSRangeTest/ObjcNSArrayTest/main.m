//
//  main.m
//  ObjcNSArrayTest
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[@"a", @"b", @"c", @"d"];
        NSArray *subarray = [array subarrayWithRange:NSMakeRange(1, 2)];
        NSLog(@"subarray %@", subarray); // @[@"b", @"c"]
        for (int i = 0; i < subarray.count; i++) {
            NSLog(@"array item: %@",subarray[i]);
        }
    }
    return 0;
}
