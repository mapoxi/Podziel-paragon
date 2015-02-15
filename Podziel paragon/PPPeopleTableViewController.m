//
//  PPPeopleTableViewController.m
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 13.02.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import "PPPeopleTableViewController.h"
#import "PPAddPersonViewController.h"
#import "Person.h"
#import "NSManagedObject+CRUD.h"
#import "PPPeopleTableViewCell.h"


@interface PPPeopleTableViewController ()
@property PPPeopleTableViewCell *pPPeopleViewCell;
@property (strong, nonatomic) NSArray *people;

@end

@implementation PPPeopleTableViewController

- (void)viewWillAppear:(BOOL)animated {
    _people = [Person readAllObjects];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _pPPeopleViewCell = [[PPPeopleTableViewCell alloc] init];
    
    self.navigationItem.title = @"Osoby";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Dodaj" style:UIBarButtonItemStylePlain target:self action:@selector(addPerson)];

}

#pragma mark - Events

- (void)addPerson {
    PPAddPersonViewController *newPersonSegue = [[PPAddPersonViewController alloc] init];
    [self.navigationController pushViewController:newPersonSegue animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_people count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        
        Person *person = _people[indexPath.row];
        
        cell.textLabel.text = [NSString stringWithFormat:@"%@", person.personName];
    }
    
    return cell;
}

/*
 
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
