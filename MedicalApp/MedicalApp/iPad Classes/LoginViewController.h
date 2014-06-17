//
//  LoginViewController.h
//  MedicalApp
//
//  Created by Basit Khan on 17/06/2014.
//  Copyright (c) 2014 Basit Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *txtEmail;
    IBOutlet UITextField *txtPassword;
    IBOutlet UIButton *btnRememberMe;
}

-(IBAction)RememberMe:(id)sender;
-(IBAction)Login;

@end
