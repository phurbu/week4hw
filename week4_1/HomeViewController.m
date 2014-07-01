//
//  HomeViewController.m
//  week4_1
//
//  Created by Phurbu Dolma on 6/24/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "HomeViewController.h"
#import "LoginViewController.h"

@interface HomeViewController ()
- (IBAction)onLogIn:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *exploreView;

@end

@implementation HomeViewController

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
    //move explore
    self.exploreView.center = CGPointMake(95, 490);
    
    
    
    
    [UIView animateWithDuration:1.0f delay:0 options:(UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat) animations:^{
        
        self.exploreView.center = CGPointMake(95, 493);
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:0.5f animations:^{
            
            self.exploreView.center = CGPointMake(94, 490);
            
        } completion:nil];
        
    }];
    
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLogIn:(id)sender {
 UIViewController *vc = [[LoginViewController alloc] init];
vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
  [self presentViewController:vc animated:YES completion:nil];
  //with navigation controller
    //LoginViewController *vc = [[LoginViewController alloc ] init];
    //[self.navigationController pushViewController:vc animated:YES];
  
    
   // UIViewController *vc = [[LoginViewController alloc] init];
 //   UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:vc];
  //  navigationController.modalTransitionStyle = UIModalTransitionStyleCoverVertical; // Rises from below
    
    //[self presentViewController:navigationController animated:YES completion:nil];
    
}
@end
