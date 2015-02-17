//
//  PPAddProductViewController.m
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 15.02.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import "PPAddProductViewController.h"
#import "Product.h"
#import "NSManagedObject+CRUD.h"

@interface PPAddProductViewController ()

@end

@implementation PPAddProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.navigationController.title = @"Dodaj produkt";
}

- (IBAction)addProductToBill {
 NSArray *howManyCount = [Product readAllObjects];
 Product *lastProductID = [howManyCount lastObject];
 
 Product *addNewProduct = [Product createObject];
 addNewProduct.productName = _addProductNameTextBox.text;
 addNewProduct.productQuantity = [NSNumber numberWithFloat:[_addProductQuantityTextBox.text floatValue]];
 addNewProduct.productPrice = [NSNumber numberWithFloat:[_addProductPriceTextBox.text floatValue]];
 addNewProduct.productID = [NSNumber numberWithInt:([lastProductID.productID intValue]+1)];
 
 [Product saveDatabase];
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
