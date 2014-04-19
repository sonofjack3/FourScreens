//
//  ScreenOneController.h
//  FourScreens
//
//  Created by Evan Jackson on 2013-10-15.
//  Copyright (c) 2013 Evan Jackson. All rights reserved.
//
//  View controller for screen one, containing a UISegmentedControl that chooses an image to be displayed in a UIImageView

#import <UIKit/UIKit.h>

@interface ScreenOneController : UIViewController
- (IBAction)changePhotoAction:(id)sender; //changes imageView when one of 3 sections of the UISegmentedControl is pressed
@property (weak, nonatomic) IBOutlet UIImageView *imageView; //holds one of 3 images to be displayed, selected by the segmented control

@end
