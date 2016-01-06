//
//  Movie.m
//  videoStore
//
//  Created by Nelida Velazquez on 1/5/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

#import "Movie.h"

@interface Movie()

@property (nonatomic, strong, readwrite) NSString *title;
@property (nonatomic, readwrite) NSInteger priceCode;

@end

@implementation Movie

- (id)initWithTitle:(NSString *)title andPriceCode:(NSInteger)priceCode{

    self = [self init];
    if (self) {
        _title = title;
        _priceCode = priceCode;
    }
    return self;
}

- (void)setMovieTitle:(NSString *)movieTitle{
    _title = movieTitle;
}

- (NSString *)getMovieTitle{
    return _title;
}

- (void)setMoviePrice:(NSInteger)price{
    _priceCode = price;
}

- (NSInteger)getMoviePrice{
    return _priceCode;
}

@end
