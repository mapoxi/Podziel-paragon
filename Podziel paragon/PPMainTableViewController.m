//
//  PPMainTableViewController.m
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 10.02.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import "PPMainTableViewController.h"
#import "PPListTableViewCell.h"
#import "PPPeopleTableViewController.h"

@interface PPMainTableViewController ()

@end

@implementation PPMainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"Paragon";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Osoby" style:UIBarButtonItemStylePlain target:self action:@selector(allPeople)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Produkty" style:UIBarButtonItemStylePlain target:self action:@selector(addProducts)];

//    [self.tableView reloadData];
}

- (void)viewDidAppear:(BOOL)animated {
    //tutaj pobieramy wszystkie produkty
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Events

- (void)allPeople {
    PPPeopleTableViewController *allPeopleSegue = [[PPPeopleTableViewController alloc] init];
    [self.navigationController pushViewController:allPeopleSegue animated:YES];
}

- (void)addProducts {
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"PPListTableViewCell";
    
    PPListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil){
        NSLog(@"New Cell Made");
        
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"PPListTableViewCell" owner:nil options:nil];
        
        for(id currentObject in topLevelObjects)
        {
            if([currentObject isKindOfClass:[PPListTableViewCell class]])
            {
                cell = (PPListTableViewCell *)currentObject;
                break;
            }
        }
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
