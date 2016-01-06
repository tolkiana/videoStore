//
//  Customer.m
//  videoStore
//
//  Created by Nelida Velazquez on 1/5/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

#import "Customer.h"

@interface Customer()

@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, strong, readwrite) NSMutableArray *rentals;

@end

@implementation Customer

- (id)initWithName:(NSString *)name{
    self = [self init];
    if (self) {
        _rentals = [[NSMutableArray alloc] init];
        _name = name;
    }
    return self;
}

- (void)addRental:(Rental *)rental{
    [self.rentals addObject:rental];
}

- (NSString *)getName{
    return _name;
}

- (NSString *)statement{
    NSString *result;
    return result;
}

@end
