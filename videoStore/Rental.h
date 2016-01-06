//
//  Rental.h
//  videoStore
//
//  Created by Nelida Velazquez on 1/5/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

@interface Rental : NSObject

@property (nonatomic, strong, readonly) Movie *movie;
@property (nonatomic, readonly) NSInteger daysRented;

@end
