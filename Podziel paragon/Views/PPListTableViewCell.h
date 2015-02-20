//
//  PPListTableViewCell.h
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 10.02.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PPListTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UILabel *quantity;
@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) IBOutlet UISwitch *switch1;
@property (strong, nonatomic) IBOutlet UISwitch *switch2;
@property (strong, nonatomic) IBOutlet UISwitch *switch3;
@property (strong, nonatomic) IBOutlet UISwitch *switch4;
@property (strong, nonatomic) IBOutlet UISwitch *switch5;
@property (strong, nonatomic) IBOutlet UISwitch *switch6;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel1;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel2;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel3;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel4;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel5;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel6;

@property (strong, nonatomic) NSArray *people;

@end
