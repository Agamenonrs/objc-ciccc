//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "CheeryManager.h"
#import "AngryManager.h"
#import "InputHandler.h"
#import "DeliveryService.h"
#import "AppUtil.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        
        Kitchen *restaurantKitchen = [Kitchen new];
        CheeryManager *cheery = [[CheeryManager alloc] init];
        AngryManager *angry = [[AngryManager alloc] init];
        DeliveryService *deliveryService = [[DeliveryService alloc] init];
        cheery.delegate = deliveryService;
        angry.delegate = deliveryService;
        
//        large pepperoni mushrooms onions
//        medium onions sausage bacon
//        small extra_cheese black_olives anchovies
//        small green_peppers pineapple spinach
        
        while (TRUE) {
            // Loop forever
            NSLog(@"Please pick your pizza size and toppings:");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            PizzaSize size;
            
            if ([commandWords[0] isEqualToString:[AppUtil pizzaSizeToString:small]]){
                size = small;
            }else if ([commandWords[0] isEqualToString:[AppUtil pizzaSizeToString:medium]]){
                size = medium;
            }else if ([commandWords[0] isEqualToString:[AppUtil pizzaSizeToString:large]]){
                size = large;
            }else{
                NSLog(@"Invalid pizza size");
                continue;
            }
            NSString *input = [InputHandler getUserInput:@"1-cheer manager, 2-angry manager or 3-None" ];
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1,[commandWords count]-1)];
            NSInteger manager = [input intValue];
            Pizza *pizza;
            if(manager == 1){
                restaurantKitchen.delegate = cheery;
                pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
            }else if (manager == 2){
                restaurantKitchen.delegate = angry;
                pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
            }else{
                pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
            }
            for(NSString *deliveredPizza in [deliveryService deliveredPizzas]){
                NSLog(@"Delivered %@" , deliveredPizza);
            }
        }
        

    }
    return 0;
}

