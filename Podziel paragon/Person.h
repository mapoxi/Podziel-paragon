//
//  Person.h
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 13.02.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Person : NSManagedObject

@property (nonatomic) int personID;
@property (nonatomic, retain) NSString * personName;
@property (nonatomic, retain) NSString * personNick;

@end
