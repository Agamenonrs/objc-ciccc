//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Agamenon Rocha Dos Santos on 19/06/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject <DeliveryDelagate>

@property (nonatomic) NSMutableArray *deliveredPizzas;

@property (nonatomic, weak) id<DeliveryDelagate> delegate;

@end

NS_ASSUME_NONNULL_END
