//
//  OrangesViewController.m
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-16.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  View controller for the OrangesView within the Option2 view. Displays "oranges.jpg"

#import "OrangesViewController.h"

@interface OrangesViewController ()

@end

@implementation OrangesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Oranges"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
