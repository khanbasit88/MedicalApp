//
//  ViewController.m
//  MedicalApp
//
//  Created by Basit Khan on 17/06/2014.
//  Copyright (c) 2014 Basit Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Display View

-(void)displayView;
{
    loginviewcontroller = [self.storyboard instantiateViewControllerWithIdentifier:@"loginviewcontroller"];
    [self presentViewController:loginviewcontroller animated:YES completion:nil];
}

@end
