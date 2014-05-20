//
//  ViewController.m
//  DragonFashion
//
//  Created by Orten, Thomas on 20.05.14.
//  Copyright (c) 2014 Orten, Thomas. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"
#import "DragonDetailViewController.h"

@interface ViewController () <UITableViewDataSource, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITableView *dragonTableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Dragon *dragon1 = [[Dragon alloc] init];
    dragon1.fullName = @"Huff";
    dragon1.signatureClothingItem = @"Scarf";
    dragon1.tailLength = @"10 metres";
    Dragon *dragon2 = [[Dragon alloc] init];
    dragon2.fullName = @"Don";
    dragon2.signatureClothingItem = @"Dress";
    dragon2.tailLength = @"20 metres";
    Dragon *dragon3 = [[Dragon alloc] init];
    dragon3.fullName = @"Smaug";
    dragon3.signatureClothingItem = @"Hat";
    dragon3.tailLength = @"30 metres";
    Dragon *dragon4 = [[Dragon alloc] initWithFullName:@"Tom"];
    dragon4.signatureClothingItem = @"Shoes";
    dragon4.tailLength = @"35 metres";
    Dragon *dragon5 = [[Dragon alloc] initWithFullName:@"Ryan" signatureClothingItem:@"Light Saber"];
    dragon5.tailLength = @"40 metres";
    Dragon *dragon6 = [[Dragon alloc] initWithFullName:@"Paul" signatureClothingItem:@"Shirt" tailLength:@"50 metres"];
	self.dragons = [NSArray arrayWithObjects:
                    dragon1,
                    dragon2,
                    dragon3,
                    dragon4,
                    dragon5,
                    dragon6, nil];

    for (Dragon *dragon in self.dragons) {
        NSLog(@"Dragon: %@", dragon);
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dragons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID"];
    cell.textLabel.text = dragon.fullName;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *selectedIndexPath = self.dragonTableView.indexPathForSelectedRow;
    Dragon *selectedDragon = [self.dragons objectAtIndex:selectedIndexPath.row];
    DragonDetailViewController *dragonViewController = segue.destinationViewController;
    dragonViewController.dragon = selectedDragon;
}

@end
