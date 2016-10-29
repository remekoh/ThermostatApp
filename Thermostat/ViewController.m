//
//  ViewController.m
//  Thermostat
//
//  Created by rem{e}koh on 10/3/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tempControl.minimumValue = -32;
    self.tempControl.maximumValue = 100;
}

//slider action

-(IBAction) tempValueChanged:(UISlider *) tempControl {
    
    
    float valueOfSlider = (float) self.tempControl.value;
    
    self.tempDisplay.text = [NSString stringWithFormat:@"%.0f", valueOfSlider];
    
    NSString *displayText = self.tempDisplay.text;
    
    displayText = [NSString stringWithFormat:@"%.0f", valueOfSlider];
    
    
    if ((displayText.integerValue > 32 && self.unitToggleSwitch.selectedSegmentIndex == 0) || (displayText.integerValue > 90 && self.unitToggleSwitch.selectedSegmentIndex == 1) ){
        self.view.backgroundColor = [UIColor redColor];
        
    } else if ((displayText.integerValue < -6 && self.unitToggleSwitch.selectedSegmentIndex == 0) || (displayText.integerValue < 20 && self.unitToggleSwitch.selectedSegmentIndex == 1)){
        self.view.backgroundColor = [UIColor blueColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }

}



-(IBAction) unitsValueChanged:(UISegmentedControl *) unitToggleSwitch {
    switch (self.unitToggleSwitch.selectedSegmentIndex) {
            
        case 0:
            [self.tempControl setValue:((self.tempControl.value-32)*5)/9];
            self.tempDisplay.text = [NSString stringWithFormat:@"%.0f", self.tempControl.value];
            break;
            
        case 1:
            self.tempDisplay.text = [NSString stringWithFormat:@"%.0f", ((self.tempControl.value*9)/5)+32];
            [self.tempControl setValue:((self.tempControl.value*9)/5)+32];
            break;

        default:
            break;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
