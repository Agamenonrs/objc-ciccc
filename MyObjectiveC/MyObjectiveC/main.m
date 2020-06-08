//
//  main.m
//  MyObjectiveC
//
//  Created by Agamenon Rocha Dos Santos on 08/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        BOOL b = NO;
        NSLog(@"abcbool: %d", b);
        float f = 3.14f;
        double d = 3.14;
        CGFloat cf = 3.14;
        NSLog(@"float: %10.2f", f);
        
        int8_t i = 1;
        NSLog(@"INT8 %d", i);
    }
    return 0;
}
