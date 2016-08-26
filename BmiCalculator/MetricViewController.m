//
//  MetricViewController.m
//  BmiCalculator
//
//  Created by Erick Barbosa on 3/18/15.
//  Copyright (c) 2015 Erick_Barbosa. All rights reserved.
//

#import "MetricViewController.h"


@interface MetricViewController ()
@property (weak, nonatomic) IBOutlet UITextField *meterTextField;
@property (weak, nonatomic) IBOutlet UITextField *cmTextField;
@property (weak, nonatomic) IBOutlet UITextField *kilosTextField;
@property NSString * displayResults;
@end

@implementation MetricViewController
@synthesize delegate;
- (IBAction)CalculateButton:(UIButton *)sender {
    
    if (_cmTextField.text && _kilosTextField.text >0) {
        
        double cm = [_cmTextField.text doubleValue];
        double kilos =[_kilosTextField.text doubleValue];
        double conversion = cm /100;
        double results = kilos /(pow(conversion,2));
        self.displayResults = [NSString stringWithFormat:@"Your BMI is %.2f",results];
        [self.delegate passData:self.displayResults];
        [self dismissViewControllerAnimated:YES
                                 completion:nil];
    }

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}
- (IBAction)exitButton:(UIButton *)sender {
    [self.delegate passData:@"You pressed exit "];
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
