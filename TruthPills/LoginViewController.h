//
//  LoginViewController.h
//  TruthPills
//
//  Created by Jota Gomez on 30/04/14.
//  Copyright (c) 2014 Celmedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface LoginViewController : UIViewController{
    
    IBOutlet UITextField *txtUsername;
    IBOutlet UITextField *txtPassword;
    IBOutlet UIButton *btnIniciarSesion;
    
    UIGestureRecognizer *tapper;
    
}

-(IBAction)iniciarSesion:(id)sender;

@end
