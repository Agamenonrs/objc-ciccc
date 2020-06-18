//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Agamenon Rocha Dos Santos on 17/06/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, PizzaSize) {
    small,
    medium,
    large,
};

@interface Pizza : NSObject

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray*) toppings;

@property (nonatomic) PizzaSize size;
@property (nonatomic, weak) NSArray *toppings;

-(NSUInteger) price;



@end

NS_ASSUME_NONNULL_END
