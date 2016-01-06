//
//  Movie.m
//  videoStore
//
//  Created by Nelida Velazquez on 1/5/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (id)initWithTitle:(NSString *)title andPriceCode:(NSInteger)priceCode{

    self = [self init];
    if (self) {
        _title = title;
        _priceCode = priceCode;
    }
    return self;
}

@end
