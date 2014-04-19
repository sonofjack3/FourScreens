//
//  ScreenFourController.m
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-15.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  View controller for screen four. View contains 3 sliders affecting the amount red, green and blue of the view background

#import "ScreenFourController.h"

@interface ScreenFourController ()
    -(void) checkText;
@end

@implementation ScreenFourController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //set sliders initially to 1
    [_redSlider setValue:1];
    [_greenSlider setValue:1];
    [_blueSlider setValue:1];
    
    //set minimum and maximum values of sliders (0-1)
    [_redSlider setMinimumValue:0];
    [_greenSlider setMinimumValue:0];
    [_blueSlider setMinimumValue:0];
    [_redSlider setMaximumValue:1];
    [_greenSlider setMaximumValue:1];
    [_blueSlider setMaximumValue:1];
    
    //set background color to values of sliders (initially white)
    [[self view] setBackgroundColor:[UIColor colorWithRed:[_redSlider value] green:[_greenSlider value] blue:[_blueSlider value] alpha:1]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Changes amount of red in view background and updates redLabel
- (IBAction)redSliderChanged:(id)sender
{
    [_redLabel setText:[NSString stringWithFormat:@"Red: %0.f", 255 * [_redSlider value]]];
    [[self view] setBackgroundColor:[UIColor colorWithRed:[_redSlider value] green:[_greenSlider value] blue:[_blueSlider value] alpha:1]];
    [self checkText]; //update text color
}

// Changes amount of green in view background and updates greenLabel
- (IBAction)greenSliderChanged:(id)sender
{
    [_greenLabel setText:[NSString stringWithFormat:@"Green: %0.f", 255 * [_greenSlider value]]];
    [[self view] setBackgroundColor:[UIColor colorWithRed:[_redSlider value] green:[_greenSlider value] blue:[_blueSlider value] alpha:1]];
    [self checkText]; //update text color
}

// Changes amount of blue in view background and updates blueLabel
- (IBAction)blueSliderChanged:(id)sender
{
    [_blueLabel setText:[NSString stringWithFormat:@"Blue: %0.f", 255 * [_blueSlider value]]];
    [[self view] setBackgroundColor:[UIColor colorWithRed:[_redSlider value] green:[_greenSlider value] blue:[_blueSlider value] alpha:1]];
    [self checkText]; //update text color
}

// Helper method which changes text color of all labels from black to white when the red amount is below 160 AND the green amount is below 170
- (void)checkText
{
    if ((255 * [_redSlider value]) < 160 && (255 * [_greenSlider value]) < 170)
    {
        [_redLabel setTextColor:[UIColor whiteColor]];
        [_greenLabel setTextColor:[UIColor whiteColor]];
        [_blueLabel setTextColor:[UIColor whiteColor]];
    }
    else
    {
        [_redLabel setTextColor:[UIColor blackColor]];
        [_greenLabel setTextColor:[UIColor blackColor]];
        [_blueLabel setTextColor:[UIColor blackColor]];
    }
}

@end
