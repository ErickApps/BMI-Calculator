//
//  UsViewController.m
//  BmiCalculator
//
//  Created by Erick Barbosa on 3/18/15.
//  Copyright (c) 2015 Erick_Barbosa. All rights reserved.
//

#import "UsViewController.h"
#import "DataDelegate.h"
#include <math.h>
@interface UsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *feetTextField;
@property (weak, nonatomic) IBOutlet UITextField *inchTexField;
@property (weak, nonatomic) IBOutlet UITextField *poundsTextField;
@property NSString * displayResults;
@end

@implementation UsViewController
@synthesize delegate;



- (IBAction)calculateButton:(UIButton *)sender {
    if (_feetTextField.text && _inchTexField.text && _poundsTextField.text >0) {
        
        double feet = [_feetTextField.text doubleValue];
        double inch = [_inchTexField.text doubleValue];
        double pounds =[_poundsTextField.text doubleValue];
        double conversion =(feet * 12 + inch);
        double results = (pounds /(pow(conversion,2)))*703;
        self.displayResults = [NSString stringWithFormat:@"You BMI is %.2f",results];
        [self.delegate passData:self.displayResults];
        [self dismissViewControllerAnimated:YES completion:nil];
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
