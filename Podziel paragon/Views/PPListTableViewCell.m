//
//  PPListTableViewCell.m
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 10.02.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import "PPListTableViewCell.h"
#import "NSManagedObject+CRUD.h"
#import "Person.h"

@implementation PPListTableViewCell

- (void)awakeFromNib {
    // Initialization code
    //NSLog(@"1. Inicjalizacja cella");
    _people = [Person readAllObjects];
    _nameLabel1.hidden = YES;
    _nameLabel2.hidden = YES;
    _nameLabel3.hidden = YES;
    _nameLabel4.hidden = YES;
    _nameLabel5.hidden = YES;
    _nameLabel6.hidden = YES;
    
    _switch1.hidden = YES;
    _switch2.hidden = YES;
    _switch3.hidden = YES;
    _switch4.hidden = YES;
    _switch5.hidden = YES;
    _switch6.hidden = YES;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    if ([_people count] > 0) {
        _nameLabel1.hidden = NO;
        _switch1.hidden = NO;
    }
    if ([_people count] > 1) {
        _nameLabel2.hidden = NO;
        _switch2.hidden = NO;
    }
    
    //UISwitch *label = (UISwitch *)[self.contentView viewWithTag:1];
    //label.hidden = NO;
   }

@end
