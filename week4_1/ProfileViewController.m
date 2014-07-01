//
//  ProfileViewController.m
//  week4_1
//
//  Created by Phurbu Dolma on 6/24/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *Exploreprofile;

@end

@implementation ProfileViewController

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
    self.Exploreprofile.center = CGPointMake(95, 490);
    
    
    
    [UIView animateWithDuration:1 animations:^{
        self.Exploreprofile.center = CGPointMake(95, 493);
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:1 animations:^{
            self.Exploreprofile.center = CGPointMake(94, 490);
        } completion:nil];
        
    }];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
