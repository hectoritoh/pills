//
//  LoginViewController.m
//  TruthPills
//
//  Created by Jota Gomez on 30/04/14.
//  Copyright (c) 2014 Celmedia. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController


-(IBAction)iniciarSesion:(id)sender{
    //TODO
}

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
    txtUsername.borderStyle = UITextBorderStyleNone;
    txtUsername.layer.borderWidth = 1.0f;
    txtUsername.layer.borderColor = [[UIColor grayColor] CGColor];
    txtUsername.layer.cornerRadius = 4.0f;
    
    txtPassword.borderStyle = UITextBorderStyleNone;
    txtPassword.layer.borderWidth = 1.0f;
    txtPassword.layer.borderColor = [[UIColor grayColor] CGColor];
    txtPassword.layer.cornerRadius = 4.0f;
    
    btnIniciarSesion.layer.cornerRadius = 4.0f;
    
    
    
    
    
    
    //[[txtUsername layer] setBorderColor:[[UIColor colorWithRed:171.0/255.0 green:171.0/255.0 blue:171.0/255.0 alpha:1.0] CGColor]];
    
    
    [super viewDidLoad];
    tapper = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTap:)];
    tapper.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapper];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)handleSingleTap:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
}

@end
