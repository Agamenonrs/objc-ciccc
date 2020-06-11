//
//  InputHandler.m
//  Lab13
//
//  Created by Agamenon Rocha Dos Santos on 10/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}



+ (NSString *) getUserInput: (NSString *) prompt {

  int maxLength = 255;
  NSLog(@"%@ ", prompt);
  char inputChars[maxLength];
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
     return [[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  }
  return NULL;
}


@end
