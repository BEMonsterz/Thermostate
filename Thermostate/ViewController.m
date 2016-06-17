//
//  ViewController.m
//  Thermostate
//
//  Created by Bryan Ayllon on 6/16/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,weak) IBOutlet UISlider *slider;
@property(nonatomic,weak) IBOutlet UILabel *finalOutput;
@property(nonatomic,weak) IBOutlet UISegmentedControl *tempeture;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)sliderValueChanged:(id)sender{
    NSLog(@"%d",(int) self.slider.value);
//    NSString *outputLabel =[NSString stringWithFormat:@"%d",(int) self.slider.value];
//    self.finalOutput.text = outputLabel;
    

//    NSLog(@"%d",(int) self.slider.value);
    if(_tempeture.selectedSegmentIndex == 0){
        
        float fahrenheit = self.slider.value;
        float celsius = (fahrenheit -32) / 1.8;
        
        NSString *valueString = [NSString stringWithFormat:@"%4.2f" ,celsius];
        self.finalOutput.text = valueString;
        
        
        
//      if the tempeture reaches above 90 then change too red
//      else if the tempeture reaches below 20 then change to blue

        
        
        
        if (celsius >= 32){
            self.view.backgroundColor=[UIColor colorWithRed:183/255.0 green:28/255.0 blue:28/255.0 alpha:1.0];
        }   else if( celsius <= -6){
            self.view.backgroundColor=[UIColor colorWithRed:79/255.0 green:195/255.0 blue:247/255.0 alpha:1.0];
            
        }
        
        
    }
    else if (_tempeture.selectedSegmentIndex == 1){
        

        NSString *valueString = [NSString stringWithFormat:@"%d",(int) self.slider.value];
        self.finalOutput.text = valueString;
        
        
        if (self.slider.value >= 90){
            
            self.view.backgroundColor=[UIColor colorWithRed:183/255.0 green:28/255.0 blue:28/255.0 alpha:1.0];
            
        }   else if( self.slider.value <= 20){
            
            self.view.backgroundColor=[UIColor colorWithRed:79/255.0 green:195/255.0 blue:247/255.0 alpha:1.0];
            
        }
        
        
    }
    
//      if the tempeture reaches above 90 then change too red
//      else if the tempeture reaches below 20 then change to blue
    

    
    
//    self.view.backgroundColor=[UIColor redColor];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
