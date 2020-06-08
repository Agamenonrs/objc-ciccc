//
//  main.m
//  MyObjectiveC2
//
//  Created by Agamenon Rocha Dos Santos on 08/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World 2!");
        int year = 2020;
        printf("Hello, world %d\n", year);
        
//        int month;
//        int day;
        // & mean address of
//        printf("type month and day");
//        scanf("%d %d", &month, &day);
//        printf("year: %d, month: %d, day: %d\n", year, month, day);
        
        char inputChars[255];
        printf("write something: ");
        char *result = fgets(inputChars,255, stdin);
//        if (result != NULL){
//            printf("input: %s\n",result);
//        }
        NSString *objcStr = [NSString stringWithUTF8String: inputChars];
        NSLog(@"obscStr %@",objcStr);
        NSString *trimmed = [objcStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        NSLog(@"objStr: %@, length: %lu\n", trimmed, [trimmed length]);
        
        
        
        
    }
    return 0;
}
