//
//  LoginViewController.m
//  MedicalApp
//
//  Created by Basit Khan on 17/06/2014.
//  Copyright (c) 2014 Basit Khan. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TextField Delegates

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField == txtEmail)
    {
        [txtPassword becomeFirstResponder];
    }
    else if(textField == txtPassword)
    {
        [txtPassword resignFirstResponder];
    }
    return YES;
}

#pragma mark - IB Actions

-(IBAction)RememberMe:(id)sender
{
    int i = [sender tag];
    if(i == 0)
    {
        [btnRememberMe setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateNormal];
        [btnRememberMe setTag:1];
    }
    else if(i == 1)
    {
        [btnRememberMe setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
        [btnRememberMe setTag:0];
    }
}

-(IBAction)Login
{
    if(txtEmail.text.length == 0 || txtPassword.text.length == 0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Fields Cannot be Empty." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        
    }
}

@end
