//
//  PersonWithProduct.h
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 06.03.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface PersonWithProduct : NSManagedObject

@property (nonatomic) int personID;
@property (nonatomic, retain) NSNumber * positionIsOn;
@property (nonatomic) int productID;
@property (nonatomic, retain) NSNumber * pWPID;

@end
