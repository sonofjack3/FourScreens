//
//  Option2Controller.m
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-16.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  View controller for the Option 2 view within screen three. View contains two buttons for displaying other views

#import "Option2Controller.h"

@interface Option2Controller ()

@end

@implementation Option2Controller

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
    [self setTitle:@"Option 2"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Displays the ApplesView by pushing ApplesViewController onto the navigation stack
- (IBAction)applesAction:(id)sender
{
    UIViewController *next = [[ApplesViewController alloc] initWithNibName:@"ApplesViewController" bundle:nil];
    [[self navigationController] pushViewController:next animated:YES];
}

// Displays the ApplesView by pushing ApplesViewController onto the navigation stack
- (IBAction)orangesAction:(id)sender
{
    UIViewController *next = [[OrangesViewController alloc] initWithNibName:@"OrangesViewController" bundle:nil];
    [[self navigationController] pushViewController:next animated:YES];
}
@end
