//
//  StripePaymentService.m
//  Payments
//
//  Created by Agamenon Rocha Dos Santos on 13/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)value {
     NSLog(@"Stripe payment done!");
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2);
}

@end
