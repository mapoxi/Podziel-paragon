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
#import "PPAddProductViewController.h"
#import "Product.h"
#import "PersonWithProduct.h"
#import "NSManagedObject+CRUD.h"

@interface PPMainTableViewController ()
@property (strong, nonatomic) NSArray *product;
@property PPListTableViewCell *pPListTableViewCell;

@end

@implementation PPMainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"Paragon";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Osoby" style:UIBarButtonItemStylePlain target:self action:@selector(allPeople)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Produkty" style:UIBarButtonItemStylePlain target:self action:@selector(addProducts)];
    
    _pPListTableViewCell = [[PPListTableViewCell alloc] init];
    //NSLog(@"vDL");
}

- (void)viewDidAppear:(BOOL)animated {
    _product = [Product readAllObjects];
    //NSLog(@"Kurwica");
    [self.tableView reloadData];
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
    PPAddProductViewController *addProductSegue = [[PPAddProductViewController alloc] init];
    [self.navigationController pushViewController:addProductSegue animated:YES];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_product count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSLog(@"3. Szerokosc rowa");
    
    return 120;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"listTableViewCell";
    
    PPListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //NSLog(@"2. Create cell");
    if(!cell) {
        
        [tableView registerNib: [UINib nibWithNibName:@"PPListTableViewCell" bundle:nil] forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(PPListTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //NSLog(@"5. Wyswietlanie cella");
    Product *writeProduct = _product[indexPath.row];
    
    cell.label.text = writeProduct.productName;
    cell.quantity.text = [NSString stringWithFormat: @"%@", (NSString *)writeProduct.productQuantity];
    cell.price.text = [NSString stringWithFormat: @"%@", (NSString *)writeProduct.productPrice];
    
    //switche i labelki
    if (cell.switch1.tag == 0) {
    cell.switch1.tag = [writeProduct.productID intValue]*10;
    cell.switch2.tag = [writeProduct.productID intValue]*10+1;
    cell.switch3.tag = [writeProduct.productID intValue]*10+2;
    cell.switch4.tag = [writeProduct.productID intValue]*10+3;
    cell.switch5.tag = [writeProduct.productID intValue]*10+4;
    cell.switch6.tag = [writeProduct.productID intValue]*10+5;
        [_pPListTableViewCell addBlinkPosition:(int)cell.switch1.tag];
        [_pPListTableViewCell addBlinkPosition:(int)cell.switch2.tag];
        [_pPListTableViewCell addBlinkPosition:(int)cell.switch3.tag];
        [_pPListTableViewCell addBlinkPosition:(int)cell.switch4.tag];
        [_pPListTableViewCell addBlinkPosition:(int)cell.switch5.tag];
        [_pPListTableViewCell addBlinkPosition:(int)cell.switch6.tag];
        
        PersonWithProduct *lookSwitch1 = [PersonWithProduct readObjectWithParamterName:@"pWPID" andValue:[NSNumber numberWithLong:cell.switch1.tag]];
        if ([lookSwitch1.positionIsOn intValue] == 1) {
            cell.switch1.on = YES;
        }
        PersonWithProduct *lookSwitch2 = [PersonWithProduct readObjectWithParamterName:@"pWPID" andValue:[NSNumber numberWithLong:cell.switch2.tag]];
        if ([lookSwitch2.positionIsOn intValue] == 1) {
            cell.switch2.on = YES;
        }
        PersonWithProduct *lookSwitch3 = [PersonWithProduct readObjectWithParamterName:@"pWPID" andValue:[NSNumber numberWithLong:cell.switch3.tag]];
        if ([lookSwitch3.positionIsOn intValue] == 1) {
            cell.switch3.on = YES;
        }
        PersonWithProduct *lookSwitch4 = [PersonWithProduct readObjectWithParamterName:@"pWPID" andValue:[NSNumber numberWithLong:cell.switch4.tag]];
        if ([lookSwitch4.positionIsOn intValue] == 1) {
            cell.switch4.on = YES;
        }
        PersonWithProduct *lookSwitch5 = [PersonWithProduct readObjectWithParamterName:@"pWPID" andValue:[NSNumber numberWithLong:cell.switch5.tag]];
        if ([lookSwitch5.positionIsOn intValue] == 1) {
            cell.switch5.on = YES;
        }
        PersonWithProduct *lookSwitch6 = [PersonWithProduct readObjectWithParamterName:@"pWPID" andValue:[NSNumber numberWithLong:cell.switch6.tag]];
        if ([lookSwitch6.positionIsOn intValue] == 1) {
            cell.switch6.on = YES;
        }
    
    }
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
