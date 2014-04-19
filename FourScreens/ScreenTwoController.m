//
//  ScreenTwoController.m
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-15.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  View controller for screen two, containing a a UIPickerView with two "wheels", one for color and one for digits. User must guess the correct color/digit combination (arbitrarily chosen to be COLOR_ROW and DIGIT_ROW, defined in ScreenTwoController.h)

#import "ScreenTwoController.h"

@interface ScreenTwoController ()

@end

@implementation ScreenTwoController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //initialize color array
    [self setColors:[[NSArray alloc] initWithObjects:@"Red", @"Green", @"Blue", @"Cyan", @"Yellow", @"Magenta", @"Orange", @"Purple", @"Brown", nil]];
    //initialize digits array with digits 0-9
    [self setDigits:[[NSMutableArray alloc] init]];
    for (int i = 0; i < 10; i++)
        [_digits setObject:[NSNumber numberWithInt:i] atIndexedSubscript:i];
    
    [_picker setDelegate:self];
    [_picker setDataSource:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Returns the number of components in the picker
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2; //two "wheels" in picker, one for digits and one for colors
}

// Returns the number of rows in the given component in the picker
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) //9 colors in color wheel
        return 9;
    else                //10 digits in digit wheel
        return 10;
}

// Displays titles for rows of the picker
- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) //color picker
        return [NSString stringWithFormat:@"%@", [_colors objectAtIndex:row]];
    else                //digit picker
        return [NSString stringWithFormat:@"%@", [_digits objectAtIndex:row]];
}

// When both components have rows select, changes guessLabel to display an appopriate message to the user regarding their guess
- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSInteger colorRow = [_picker selectedRowInComponent:0]; //capture user selected row from color picker
    NSInteger digitRow = [_picker selectedRowInComponent:1]; //capture user selected row from digit picker
    if (colorRow == COLOR_ROW && digitRow == DIGIT_ROW) //if user guesses COLOR_ROW and DIGIT_ROW
        [_guessLabel setText:@"YOU GOT IT"];
    else                                                //user guesses any other color/digit combination
        [_guessLabel setText:@"Guess again"];
}

@end
