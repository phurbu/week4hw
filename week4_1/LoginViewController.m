//
//  LoginViewController.m
//  week4_1
//
//  Created by Phurbu Dolma on 6/29/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "LoginViewController.h"
#import "TabViewViewController.h"

@interface LoginViewController ()
- (IBAction)onDone:(id)sender;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onDone:(id)sender {
  
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
   // UIViewController *vc = [[TabViewViewController alloc] init];
  //  vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
   // [self presentViewController:vc animated:YES completion:nil];

    }

@end
