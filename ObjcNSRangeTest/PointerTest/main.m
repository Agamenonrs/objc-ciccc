//
//  main.m
//  PointerTest
//
//  Created by Agamenon Rocha Dos Santos on 10/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int x = 10;
        NSLog(@"%d", x);
        int *y = &x;
        NSLog(@"address of x: %p", y);
        NSLog(@"content of what y is pointing: %d", *y);
        int **z = &y;
        NSLog(@"address of y: %p", &y);
        NSLog(@"content of z: %p", z);
        NSLog(@"content of content of what z is pointing: %d", **z);
    }
    return 0;
}
