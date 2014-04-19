//
//  ScreenFourController.h
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-15.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  View controller for screen four. View contains 3 sliders affecting the amount red, green and blue of the view background

#import <UIKit/UIKit.h>

@interface ScreenFourController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *redSlider; //slider for affecting amount of red in the view background
@property (weak, nonatomic) IBOutlet UISlider *greenSlider; //slider for affecting amount of green in the view background
@property (weak, nonatomic) IBOutlet UISlider *blueSlider; //slider for affecting amount of blue in the view background

- (IBAction)redSliderChanged:(id)sender; //changes amount of red in view background
- (IBAction)greenSliderChanged:(id)sender; //changes amount of green in view background
- (IBAction)blueSliderChanged:(id)sender; //changes amount of blue in view background

//the value of each slider is multiplied by 255 to correspond to the 256 bits representing each color (red, green, blue) for readability
@property (weak, nonatomic) IBOutlet UILabel *redLabel; //displays amount of red in view background (0-255)
@property (weak, nonatomic) IBOutlet UILabel *greenLabel; //displays amount of green in view background (0-255)
@property (weak, nonatomic) IBOutlet UILabel *blueLabel; //displays amount of blue in view background (0-255)

@end
