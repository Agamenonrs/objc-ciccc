//
//  ApplePaymentService.m
//  Payments
//
//  Created by Agamenon Rocha Dos Santos on 14/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger)value {
    NSLog(@"Apple payment done!");
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2);
}

@end
