//
//  Option2Controller.h
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-16.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  View controller for the Option 2 view within screen three. View contains two buttons for displaying other views

#import <UIKit/UIKit.h>
#import "ApplesViewController.h"
#import "OrangesViewController.h"

@interface Option2Controller : UIViewController
- (IBAction)applesAction:(id)sender; //displays the ApplesView
- (IBAction)orangesAction:(id)sender; //displays the OrangesView

@end
