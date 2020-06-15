//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Agamenon Rocha Dos Santos on 13/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)processPaymentAmount:(NSInteger)value {
    NSLog(@"Paypal processed amount: $%lu",value);
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2);
}


@end
