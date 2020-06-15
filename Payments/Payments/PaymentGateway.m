//
//  PaymentGateway.m
//  Payments
//
//  Created by Agamenon Rocha Dos Santos on 13/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void) processPaymentAmount:(NSInteger) value{
    if ([self.delegate canProcessPayment]){
        [self.delegate processPaymentAmount:value];
    }else{
        NSLog(@"sorry! the payment cannot be processed");
    }
    
    
}

@end
