//
//  Customer.h
//  videoStore
//
//  Created by Nelida Velazquez on 1/5/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rental.h"

@interface Customer : NSObject

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSMutableArray *rentals;

- (id)initWithName:(NSString *)name;
- (void)addRental:(Rental *)rental;
- (NSString *)getName;
- (NSString *)statement;

@end
