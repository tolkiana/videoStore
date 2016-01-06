//
//  Rental.m
//  videoStore
//
//  Created by Nelida Velazquez on 1/5/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

#import "Rental.h"

@interface Rental()

@property (nonatomic, strong, readwrite) Movie *movie;
@property (nonatomic, readwrite) NSInteger daysRented;

@end

@implementation Rental

- (id)initWithMovie:(Movie *)movie andDaysRented:(NSInteger)days{
    self = [self init];
    if (self) {
        _movie = movie;
        _daysRented = days;
    }
    return self;
}

- (Movie *)getMovie{
    return _movie;
}

- (NSInteger)getDaysRented{
    return _daysRented;
}

@end
