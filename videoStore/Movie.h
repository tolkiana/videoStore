//
//  Movie.h
//  videoStore
//
//  Created by Nelida Velazquez on 1/5/16.
//  Copyright © 2016 Tolkiana. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CHILDRENS 2
#define REGULAR 0
#define NEW_RELEASE 1

@interface Movie : NSObject

@property (nonatomic, strong, readonly) NSString *title;
@property (nonatomic, readonly) NSInteger priceCode;

- (NSString *)getMovieTitle;
- (void)setMoviePrice:(NSInteger)price;
- (NSInteger)getMoviePrice;

@end
