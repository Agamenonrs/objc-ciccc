//
//  AppUtil.h
//  PizzaRestaurant
//
//  Created by Agamenon Rocha Dos Santos on 19/06/20.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppUtil : NSObject
+(NSString*) pizzaSizeToString:(PizzaSize)size;
@end

NS_ASSUME_NONNULL_END
