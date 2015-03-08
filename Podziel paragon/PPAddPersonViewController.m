//
//  PPAddPersonViewController.m
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 13.02.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import "PPAddPersonViewController.h"
#import "Person.h"
#import "NSManagedObject+CRUD.h"

@interface PPAddPersonViewController ()

@end

@implementation PPAddPersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Nowa osoba";
}

- (IBAction)addPersonButton {
    NSArray *howManyCount = [Person readAllObjects];
    Person *lastPerson = [howManyCount lastObject];
    Person *addNewPerson = [Person createObject];
    addNewPerson.personName = _addNameTextBox.text;
    addNewPerson.personNick = _addNickTextBox.text;
    addNewPerson.personID = lastPerson.personID + 1;
    [Person saveDatabase];
    [self.navigationController popViewControllerAnimated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
