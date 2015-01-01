//
//  PersonWithProduct.h
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 01.01.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface PersonWithProduct : NSManagedObject

@property (nonatomic, retain) NSNumber * pWPID;
@property (nonatomic, retain) NSNumber * personID;
@property (nonatomic, retain) NSNumber * productID;

@end
