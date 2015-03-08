//
//  PPBillViewController.m
//  Podziel paragon
//
//  Created by Piotr Mlynarski on 01.01.2015.
//  Copyright (c) 2015 Piotr Mlynarski. All rights reserved.
//

#import "PPBillViewController.h"
#import "Person.h"
#import "Product.h"
#import "PersonWithProduct.h"
#import "NSManagedObject+CRUD.h"

@interface PPBillViewController ()

@end

@implementation PPBillViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _people = [Person readAllObjects];
    
    _name1.hidden = YES;
    _name2.hidden = YES;
    _name3.hidden = YES;
    _name4.hidden = YES;
    _name5.hidden = YES;
    _name6.hidden = YES;
    _price1.hidden = YES;
    _price2.hidden = YES;
    _price3.hidden = YES;
    _price4.hidden = YES;
    _price5.hidden = YES;
    _price6.hidden = YES;
    
    if ([_people count] > 0) {
        Person *person = _people[0];
        _name1.hidden = NO;
        _price1.hidden = NO;
        _name1.text = [NSString stringWithFormat:@"%@", person.personNick];
        _price1.text = [NSString stringWithFormat:@"%.2f zł", [self personSumUp:person.personID]];
    }
    if ([_people count] > 1) {
        Person *person = _people[1];
        _name2.hidden = NO;
        _price2.hidden = NO;
        _name2.text = [NSString stringWithFormat:@"%@", person.personNick];
        _price2.text = [NSString stringWithFormat:@"%.2f zł", [self personSumUp:person.personID]];
    }
    if ([_people count] > 2) {
        Person *person = _people[2];
        _name3.hidden = NO;
        _price3.hidden = NO;
        _name3.text = [NSString stringWithFormat:@"%@", person.personNick];
        _price3.text = [NSString stringWithFormat:@"%.2f zł", [self personSumUp:person.personID]];
    }
    if ([_people count] > 3) {
        Person *person = _people[3];
        _name4.hidden = NO;
        _price4.hidden = NO;
        _name4.text = [NSString stringWithFormat:@"%@", person.personNick];
        _price4.text = [NSString stringWithFormat:@"%.2f zł", [self personSumUp:person.personID]];
    }
    if ([_people count] > 4) {
        Person *person = _people[4];
        _name5.hidden = NO;
        _price5.hidden = NO;
        _name5.text = [NSString stringWithFormat:@"%@", person.personNick];
        _price5.text = [NSString stringWithFormat:@"%.2f zł", [self personSumUp:person.personID]];
    }
    if ([_people count] > 5) {
        Person *person = _people[5];
        _name6.hidden = NO;
        _price6.hidden = NO;
        _name6.text = [NSString stringWithFormat:@"%@", person.personNick];
        _price6.text = [NSString stringWithFormat:@"%.2f zł", [self personSumUp:person.personID]];
    }
}

- (double)personSumUp: (NSNumber *)personID {
    double podsumowanie = 0;
    NSArray *readPersonToSumUp = [PersonWithProduct readObjectsWithParamterName:@"personID" andValue:personID];
    NSEnumerator *enumerator = [readPersonToSumUp objectEnumerator];
    for (PersonWithProduct *zmienna in enumerator) {
        if ([zmienna.positionIsOn intValue] == 1) {
            Product *selectedProduct = [Product readObjectWithParamterName:@"productID" andValue:zmienna.productID];
            podsumowanie = podsumowanie + [selectedProduct.productPrice doubleValue]/[selectedProduct.productDivide doubleValue];
        }
    }
    return podsumowanie;
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
