//
//  AppUtil.m
//  PizzaRestaurant
//
//  Created by Agamenon Rocha Dos Santos on 19/06/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "AppUtil.h"



@implementation AppUtil

+(NSString*) pizzaSizeToString:(PizzaSize)size {
    NSString *result = nil;

    switch(size) {
        case small:
            result = @"small";
            break;
        case medium:
            result = @"medium";
            break;
        case large:
            result = @"large";
            break;
    }

    return result;
}

@end
