//
//  Box.m
//  Lab2
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithWidth: (float) width andHeight: (float) height andLength: (float) length
{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;
    }
    return self;
}

- (float) calculateVolume {
    return self.width * self.height * self.length;
}

- (float) fitsIn:(Box *) box{
    float volume = [box calculateVolume];
    return self.calculateVolume / volume;
}

@end
