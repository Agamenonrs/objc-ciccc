//
//  Cook.h
//  Foodtruck
//
//  Created by Agamenon Rocha Dos Santos on 11/06/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "FoodTruck.h"


@interface Cook : NSObject <FoodTruckDelegate>

@property (nonatomic, weak) id<FoodTruckDelegate> delegate;

@end
