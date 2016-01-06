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
    double totalAmount = 0;
    int frequentRentedPoints = 0;
    NSString *result = [NSString stringWithFormat:@"Rental Record for %@ \n", [self getName]];
    
    NSMutableArray *currentRentals = self.rentals;
    
    while (currentRentals > 0) {
        double thisAmount = 0;
        Rental *each = self.rentals.lastObject;
        
        switch ([[each getMovie] getMoviePrice]) {
            case REGULAR:
                thisAmount += 2;
                if ([each getDaysRented] > 2)
                    thisAmount += ([each getDaysRented] - 2) * 1.5;
                break;
            case NEW_RELEASE:
                thisAmount += [each getDaysRented] * 3;
                break;
            case CHILDRENS:
                thisAmount += 1.5;
                if ([each getDaysRented] > 3)
                    thisAmount += ([each getDaysRented] - 3) * 1.5;
            default:
                break;
        }
        
        // Add frequent renter points
        frequentRentedPoints ++;
        // Add bonus for a two day new release rental
        if ([[each getMovie] getMoviePrice] == NEW_RELEASE && [each getDaysRented] > 1)
            frequentRentedPoints ++;
        
        // Show figures for this rental
        result = [NSString stringWithFormat:@"%@ %@ %.2f \n", [result copy], [[each getMovie] getMovieTitle], thisAmount];
        totalAmount += thisAmount;
        
        // Remove the rental
        [currentRentals removeLastObject];
    }
    
    // Add footer lines
    result = [NSString stringWithFormat:@"%@ Amount owed is %.2f \n", [result copy], totalAmount];
    result = [NSString stringWithFormat:@"%@ You earned %d \n", [result copy], frequentRentedPoints];
    
    return result;
}

@end
