//
//  Box.h
//  Lab2
//
//  Created by Agamenon Rocha Dos Santos on 09/06/20.
//  Copyright © 2020 Agamenon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject
@property float width, height, length;

-(instancetype)initWithWidth: (float) width andHeight: (float) height andLength: (float) length;
- (float) calculateVolume;

- (float) fitsIn:(Box *) box;
@end

