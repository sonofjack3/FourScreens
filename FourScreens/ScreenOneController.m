//
//  ScreenOneController.m
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-15.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  View controller for screen one, containing a UISegmentedControl that chooses an image to be displayed in a UIImageView

#import "ScreenOneController.h"

@interface ScreenOneController ()

@end

@implementation ScreenOneController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Changes imageView when one of 3 sections of the SegmentedControl is pressed
- (IBAction)changePhotoAction:(id)sender {
    switch ([sender selectedSegmentIndex])
    {
        case 0: //"Photo 1" is pressed
            [_imageView setImage:[UIImage imageNamed:@"egoraptor.png"]];
            break;
        case 1: //"Photo 2" is pressed
            [_imageView setImage:[UIImage imageNamed:@"avgn.jpg"]];
            break;
        case 2: //"Photo 3" is pressed
            [_imageView setImage:[UIImage imageNamed:@"jontron.png"]];
            break;
    }
}
@end
