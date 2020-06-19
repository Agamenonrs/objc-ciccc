//
//  CheeryManager.h
//  PizzaRestaurant
//
//  Created by Agamenon Rocha Dos Santos on 17/06/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheeryManager : NSObject <KitchenDelegate>

@property (nonatomic, weak) id<DeliveryDelagate> delegate;

@end

NS_ASSUME_NONNULL_END
