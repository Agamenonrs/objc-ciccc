//
//  ManagerHatesAnchovies.m
//  PizzaRestaurant
//
//  Created by Agamenon Rocha Dos Santos on 17/06/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "AngryManager.h"

@implementation AngryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return  ![toppings containsObject:@"anchovies"];
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    // if dkitchenDidMakePizza NO
    return NO;
}

@end
