//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Agamenon Rocha Dos Santos on 19/06/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init {
    if (self = [super init]) {
        _deliveredPizzas = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)deliverPizza:(Pizza *)pizza {
    NSLog(@"DeliveryService-deliverPizza");
    [self.deliveredPizzas addObject:[pizza description]];
    [self.delegate deliverPizza:pizza];
}

@end
