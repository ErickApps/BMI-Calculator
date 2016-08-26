//
//  DataDelegate.h
//  BmiCalculator
//
//  Created by Erick Barbosa on 3/18/15.
//  Copyright (c) 2015 Erick_Barbosa. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol DataDelegate <NSObject>

@optional
-(void)passData:(NSString*)data;

@property (nonatomic, weak) id <DataDelegate> delegate;

@end
