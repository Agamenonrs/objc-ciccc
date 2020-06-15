//
//  ApplePaymentService.h
//  Payments
//
//  Created by Agamenon Rocha Dos Santos on 14/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
NS_ASSUME_NONNULL_BEGIN

@interface ApplePaymentService : NSObject <PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
