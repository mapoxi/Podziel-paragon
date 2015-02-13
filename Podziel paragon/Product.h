//
//  Product.h
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 13.02.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Product : NSManagedObject

@property (nonatomic, retain) NSNumber * productID;
@property (nonatomic, retain) NSString * productName;
@property (nonatomic, retain) NSNumber * productPrice;
@property (nonatomic, retain) NSNumber * productQuantity;

@end
