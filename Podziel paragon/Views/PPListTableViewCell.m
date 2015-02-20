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
    //NSLog(@"Inicjalizacja cella");
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
    
    //_label.numberOfLines = 7;
    

    for (int i = 0; i < 6; i++) {
        if (i < [_people count] && i == 0) {
            Person *person = _people[i];
            _nameLabel1.hidden = NO;
            _switch1.hidden = NO;
            _nameLabel1.text = [NSString stringWithFormat:@"%@", person.personNick];
        }
        if (i < [_people count] && i == 1) {
            Person *person = _people[i];
            _nameLabel2.hidden = NO;
            _switch2.hidden = NO;
            _nameLabel2.text = [NSString stringWithFormat:@"%@", person.personNick];
        }
        if (i < [_people count] && i == 2) {
            Person *person = _people[i];
            _nameLabel3.hidden = NO;
            _switch3.hidden = NO;
            _nameLabel3.text = [NSString stringWithFormat:@"%@", person.personNick];
        }
        if (i < [_people count] && i == 3) {
            Person *person = _people[i];
            _nameLabel4.hidden = NO;
            _switch4.hidden = NO;
            _nameLabel4.text = [NSString stringWithFormat:@"%@", person.personNick];
        }
        if (i < [_people count] && i == 4) {
            Person *person = _people[i];
            _nameLabel5.hidden = NO;
            _switch5.hidden = NO;
            _nameLabel5.text = [NSString stringWithFormat:@"%@", person.personNick];
        }
        if (i < [_people count] && i == 5) {
            Person *person = _people[i];
            _nameLabel6.hidden = NO;
            _switch6.hidden = NO;
            _nameLabel6.text = [NSString stringWithFormat:@"%@", person.personNick];
        }
    }
}

@end
