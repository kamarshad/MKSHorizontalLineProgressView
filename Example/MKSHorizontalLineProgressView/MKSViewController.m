//
//  MKSViewController.m
//  MKSHorizontalLineProgressView
//
//  Created by kamar shad on 06/16/2016.
//  Copyright (c) 2016 kamar shad. All rights reserved.
//

#import "MKSViewController.h"
#import "MKSHorizontalLineProgressView.h"


@interface MKSViewController (){
 
}

@property (weak, nonatomic) IBOutlet MKSHorizontalLineProgressView *horizontalLineProgressView2;
@property (weak, nonatomic) IBOutlet MKSHorizontalLineProgressView *horizontalLineProgressView1;

@property (weak, nonatomic) IBOutlet MKSHorizontalLineProgressView *horizontalLineProgressView3;
@end

@implementation MKSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self doIntialSetup];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}

- (void)doIntialSetup{

    //Horizontal line with percentage text
    self.horizontalLineProgressView1.progressValue = 49.0f;
    self.horizontalLineProgressView1.trackColor = [UIColor colorWithRed:34.0f/255.0f green:34.0f/255.0f blue:34.0f/255.0f alpha:1.0f];
    self.horizontalLineProgressView1.barColor = [UIColor colorWithRed:58.0/255.0 green:170.0/255.0 blue:53.0/255.0 alpha:1];
    self.horizontalLineProgressView1.barThickness = self.horizontalLineProgressView1.frame.size.height;
    self.horizontalLineProgressView1.showPercentageText = YES;    
    
    //Second Horizontal line with percentage text
    self.horizontalLineProgressView2.progressValue = 78.0f;
    self.horizontalLineProgressView2.trackColor = [UIColor blackColor];
    self.horizontalLineProgressView2.barColor = [UIColor colorWithRed:0.0f / 255.0f green:75.0f / 255.0f blue:125.0f / 255.0f alpha:1.0f];
    self.horizontalLineProgressView2.barThickness = self.horizontalLineProgressView2.frame.size.height;
    self.horizontalLineProgressView2.showPercentageText = YES;

    
    //Horizontal line without percentage text
    self.horizontalLineProgressView3.progressValue = 28.0f;
    self.horizontalLineProgressView3.trackColor = [UIColor blackColor];
    self.horizontalLineProgressView3.barColor = [UIColor colorWithRed:200.0f / 255.0f green:16.0f / 255.0f blue:46.0f / 255.0f alpha:1.0f];
    self.horizontalLineProgressView3.barThickness = self.horizontalLineProgressView3.frame.size.height;
    
}

@end
