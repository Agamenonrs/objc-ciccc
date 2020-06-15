//
//  PaymentGateway.h
//  Payments
//
//  Created by Agamenon Rocha Dos Santos on 13/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate
- (void) processPaymentAmount: (NSInteger) value;
- (BOOL) canProcessPayment;

@end;

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;

- (void) processPaymentAmount:(NSInteger) value;



@end
