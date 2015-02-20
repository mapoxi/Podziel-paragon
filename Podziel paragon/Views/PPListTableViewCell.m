//
//  PPListTableViewCell.m
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 10.02.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import "PPListTableViewCell.h"

@implementation PPListTableViewCell

- (void)awakeFromNib {
    // Initialization code
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    _label.numberOfLines = 7;

    NSLog(@"-------111111--------");
    // Configure the view for the selected state
}

@end
