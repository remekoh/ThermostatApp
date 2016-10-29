//
//  ViewController.h
//  Thermostat
//
//  Created by rem{e}koh on 10/3/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//outlets

@property (nonatomic, weak) IBOutlet UISlider *tempControl;
@property (nonatomic, weak) IBOutlet UILabel *tempDisplay;
@property (nonatomic, weak) IBOutlet UISegmentedControl *unitToggleSwitch;



@end

