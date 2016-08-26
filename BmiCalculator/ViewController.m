//
//  ViewController.m
//  BmiCalculator
//
//  Created by Erick Barbosa on 3/18/15.
//  Copyright (c) 2015 Erick_Barbosa. All rights reserved.
//

#import "ViewController.h"
#import "UsViewController.h"
#import "MetricViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *bmiResults;

@end


@implementation ViewController
@synthesize delegate;
#pragma mark - DataDelegate
-(void) passData:(NSString *) data
{
    
 _bmiResults.text = data;
   
    
}


- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"Us"]) {
        UsViewController *usVc= [segue destinationViewController];
        usVc.delegate = self;
    }
    else {
        
        MetricViewController *metriVc= [segue destinationViewController];
        metriVc.delegate = self;
    }
    
        
        
    
}


@end
