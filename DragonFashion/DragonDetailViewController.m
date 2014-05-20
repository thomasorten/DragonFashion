//
//  DragonDetailViewController.m
//  DragonFashion
//
//  Created by Orten, Thomas on 20.05.14.
//  Copyright (c) 2014 Orten, Thomas. All rights reserved.
//

#import "DragonDetailViewController.h"

@interface DragonDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextView *dragonTailTextView;

@end

@implementation DragonDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = self.dragon.fullName;
    self.dragonTailTextView.text = self.dragon.tailLength;
    // Do any additional setup after loading the view.
}

@end
