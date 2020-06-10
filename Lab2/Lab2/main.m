//
//  main.m
//  Lab2
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float value = 4.0f;
        float valueBox2 = 2.0f;
        Box *b1 = [[Box alloc] initWithWidth:value andHeight:value andLength:value];
        Box *b2 = [[Box alloc] initWithWidth:valueBox2 andHeight:valueBox2 andLength:valueBox2];
        
        NSLog(@"volume b1 %.1f volume b2 %.1f", [b1 calculateVolume], [b2 calculateVolume]);
        NSLog(@"fitsIn b1 %.1f of b2", [b1 fitsIn:b2]);
    }
    return 0;
}
