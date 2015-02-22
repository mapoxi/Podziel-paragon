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
    
    _people = [Person readAllObjects];
    
    if ([_people count] > 0) {
        Person *person = _people[0];
        _switch1.hidden = NO;
        _nameLabel1.hidden = NO;
        _nameLabel1.text = [NSString stringWithFormat:@"%@", person.personNick];
        _nameLabel1.adjustsFontSizeToFitWidth = YES;
    }
    if ([_people count] > 1) {
        Person *person = _people[1];
        _switch2.hidden = NO;
        _nameLabel2.hidden = NO;
        _nameLabel2.text = [NSString stringWithFormat:@"%@", person.personNick];
        _nameLabel2.adjustsFontSizeToFitWidth = YES;
    }
    if ([_people count] > 2) {
        Person *person = _people[2];
        _switch3.hidden = NO;
        _nameLabel3.hidden = NO;
        _nameLabel3.text = [NSString stringWithFormat:@"%@", person.personNick];
        _nameLabel3.adjustsFontSizeToFitWidth = YES;
    }
    if ([_people count] > 3) {
        Person *person = _people[3];
        _switch4.hidden = NO;
        _nameLabel4.hidden = NO;
        _nameLabel4.text = [NSString stringWithFormat:@"%@", person.personNick];
        _nameLabel4.adjustsFontSizeToFitWidth = YES;
    }
    if ([_people count] > 4) {
        Person *person = _people[4];
        _switch5.hidden = NO;
        _nameLabel5.hidden = NO;
        _nameLabel5.text = [NSString stringWithFormat:@"%@", person.personNick];
        _nameLabel5.adjustsFontSizeToFitWidth = YES;
    }
    if ([_people count] > 5) {
        Person *person = _people[5];
        _switch6.hidden = NO;
        _nameLabel6.hidden = NO;
        _nameLabel6.text = [NSString stringWithFormat:@"%@", person.personNick];
        _nameLabel6.adjustsFontSizeToFitWidth = YES;
    }
    
    //UISwitch *label = (UISwitch *)[self.contentView viewWithTag:1];
    //label.hidden = NO;
   }

@end
