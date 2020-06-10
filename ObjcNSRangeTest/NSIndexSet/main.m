//
//  main.m
//  NSIndexSet
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSRange range = NSMakeRange(0, 10);
        NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:range];
        NSLog(@"indexSet: %@", indexSet);
        //doesn t work
//        for (int i = 0; i < indexSet.count; i++){
//            NSLog(@"item indexset %@", indexSet[i].);
//        }
    }
    return 0;
}
