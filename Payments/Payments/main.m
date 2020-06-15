//
//  main.m
//  Payments
//
//  Created by Agamenon Rocha Dos Santos on 13/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ValueGenerator.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        for (int i = 0; i< 4; i++){
            NSInteger value = [ValueGenerator generateRandomValue];
            NSString *message = [NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total today is $%lu Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple",value];
            NSString *input = [InputHandler getUserInput:message];
            NSInteger paymentOption = [input intValue];
            PaymentGateway *paymentGateway = [[PaymentGateway alloc]init];
            
            if(paymentOption){
                switch (paymentOption) {
                    case 1:{
                        PaypalPaymentService *paypal = [[PaypalPaymentService alloc]init];
                        paymentGateway.delegate = paypal;
                        [paymentGateway processPaymentAmount:value];
                        break;
                    }
                    case 2:{
                        StripePaymentService *stripe = [[StripePaymentService alloc]init];
                        paymentGateway.delegate = stripe;
                        [paymentGateway processPaymentAmount:value];
                        break;
                    }
                    case 3:{
                        AmazonPaymentService *amazon = [[AmazonPaymentService alloc]init];
                        paymentGateway.delegate = amazon;
                        [paymentGateway processPaymentAmount:value];
                        break;
                    }
                    case 4:{
                        ApplePaymentService *apple = [[ApplePaymentService alloc]init];
                        paymentGateway.delegate = apple;
                        [paymentGateway processPaymentAmount:value];
                        break;
                    }
                    default:
                        NSLog(@"Invalid payment option");
                        break;
                }
            }else{
                NSLog(@"wrong option");
            }
        }
        return 0;
    }
}
