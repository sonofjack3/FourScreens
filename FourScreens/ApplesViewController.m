//
//  ApplesViewController.m
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-16.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  View controller for the ApplesView within the Option2 view. Displays "apples.jpg"

#import "ApplesViewController.h"

@interface ApplesViewController ()

@end

@implementation ApplesViewController

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
    [self setTitle:@"Apples"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
