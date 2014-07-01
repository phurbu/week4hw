//
//  TabViewViewController.m
//  week4_1
//
//  Created by Phurbu Dolma on 6/24/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "TabViewViewController.h"
#import "HomeViewController.h"
#import "ProfileViewController.h"
#import "SearchViewController.h"
#import "TrendingViewController.h"
#import "ComposeViewController.h"


@interface TabViewViewController ()
//- (IBAction)onPanGesture:(UIPanGestureRecognizer *)sender;

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (nonatomic, strong) HomeViewController* homeViewController;
@property (nonatomic, strong) SearchViewController* searchViewController;
@property (nonatomic, strong) ProfileViewController* profileViewController;
@property (nonatomic, strong) TrendingViewController* trendingViewController;
@property (nonatomic, strong) UINavigationController* homeNavigationController;

- (IBAction)onHomeButton:(id)sender;
- (IBAction)onSearchButton:(id)sender;
- (IBAction)onComposeButton:(id)sender;
- (IBAction)onProfileButton:(id)sender;
- (IBAction)onTrending:(id)sender;
@end

@implementation TabViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.homeViewController = [[HomeViewController alloc] init];

      //  self.homeNavigationController = [[UINavigationController alloc] initWithRootViewController:self.homeViewController];
        
        self.searchViewController = [[SearchViewController alloc] init];
        self.profileViewController = [[ProfileViewController alloc] init];
        self.trendingViewController = [[TrendingViewController alloc] init];
    
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{


    [super viewDidLoad];
    self.homeViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.homeViewController.view];
    
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onHomeButton:(id)sender {
    NSLog(@"Home");
    self.homeViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.homeViewController.view];
    self.homeViewController.view.alpha = 0;
    [UIView animateWithDuration:1 animations:^{
        self.homeViewController.view.alpha = 1;
    }];

}

- (IBAction)onSearchButton:(id)sender {
    self.searchViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.searchViewController.view];
    self.searchViewController.view.alpha = 0;
     [UIView animateWithDuration:1 animations:^{
         self.searchViewController.view.alpha = 1;
     }];
}

- (IBAction)onComposeButton:(id)sender {
    UIViewController *vc = [[ComposeViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)onProfileButton:(id)sender {
    self.profileViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.profileViewController.view];
    self.profileViewController.view.alpha = 0;
    [UIView animateWithDuration:1 animations:^{
        self.profileViewController.view.alpha = 1;
    }];

}


- (IBAction)onTrending:(id)sender {
    self.trendingViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.trendingViewController.view];
    self.trendingViewController.view.alpha = 0;
    [UIView animateWithDuration:1 animations:^{
        self.trendingViewController.view.alpha = 1;
    }];

}
//- (IBAction)onPanGesture:(UIPanGestureRecognizer *)panGestureRecognizer {
  //  CGPoint point = [panGestureRecognizer locationInView:self.view];
    
  //  if (panGestureRecognizer.state == UIGestureRecognizerStateBegan) {NSLog(@"Gesture began at: %@", NSStringFromCGPoint(point));
       // self.startingLocation = location;
        //self.MainView.center = CGPOINTmake (,self.MainView.self.MainView.Center.y);
  //  } else if (panGestureRecognizer.state == UIGestureRecognizerStateChanged) {
  //      NSLog(@"Gesture changed: %@", NSStringFromCGPoint(point));
 //   } else if (panGestureRecognizer.state == UIGestureRecognizerStateEnded) {
 //       NSLog(@"Gesture ended: %@", NSStringFromCGPoint(point));
 //   }

    
//}
@end
