//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Agamenon Rocha Dos Santos on 17/06/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"
#import "AppUtil.h"

@implementation Pizza

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray*) toppings {
    if (self = [super init]) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}


- (NSUInteger) price{
    NSUInteger price;
    switch(self.size){
        case small:
            price =  10;
            break;
        case medium:
            price = 20;
            break;
        case large:
            price = 30;
            break;
        default:
            NSLog(@"default selected");
            break;
    }
    return price;
}

- (NSString *)description
{
    NSMutableString *toppings = [[NSMutableString alloc]init];
    for (NSString *s in self.toppings){
        [toppings appendString: [NSString stringWithFormat:@"%@ ",s]];
    }
    
    return [NSString stringWithFormat:@"Pizza: %@  Size: %@ Price $%lu", toppings,[AppUtil pizzaSizeToString:self.size], self.price ];
}

@end
