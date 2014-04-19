//
//  ScreenTwoController.h
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-15.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  View controller for screen two, containing a a UIPickerView with two "wheels", one for color and one for digits. User must guess the correct color/digit combination (arbitrarily chosen to be COLOR_ROW and DIGIT_ROW, defined in ScreenTwoController.h

#import <UIKit/UIKit.h>
#define COLOR_ROW 2
#define DIGIT_ROW 2

@interface ScreenTwoController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *picker; //picker view with two components, one with colors and one digits
@property NSArray *colors; //will hold colors for the first "wheel"
@property NSMutableArray *digits; //will hold digits for the second "wheel"
@property (weak, nonatomic) IBOutlet UILabel *guessLabel; //contains a message regarding user's guess ("Guess again" or "YOU GOT IT")

@end
