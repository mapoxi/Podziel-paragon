//
//  PPAddPersonViewController.h
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 13.02.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PPAddPersonViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *addNameTextBox;
@property (weak, nonatomic) IBOutlet UITextField *addNickTextBox;
- (IBAction) addPersonButton;

@end
