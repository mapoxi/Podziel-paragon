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
    
    _Label.numberOfLines = 5;
    /*CGRect newFrame = _Label.frame;
    newFrame.size = CGSizeMake(130, 84);
    _Label.frame = newFrame;*/
    
    

    
    
    NSLog(@"-------111111--------");
    // Configure the view for the selected state
}

@end
