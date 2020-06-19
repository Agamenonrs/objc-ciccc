//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *pizza = nil;
    if (self.delegate != nil){
        BOOL shouldMakePizza =  [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings];
        
        if (shouldMakePizza){
            pizza = [[Pizza alloc]initWithSize:size andToppings:toppings];
        }
        
        BOOL shouldUpgrade =  [self.delegate kitchenShouldUpgradeOrder:self];
        if (shouldUpgrade){
            pizza = [[Pizza alloc]initWithSize:size andToppings:toppings];
        }
        
        if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            NSLog(@"Make pizza");
            [self.delegate kitchenDidMakePizza:pizza];
         }
    }else{
            pizza = [[Pizza alloc]initWithSize:size andToppings:toppings];
    }
    
    return pizza;
}

@end
