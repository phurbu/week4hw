//
//  TrendingViewController.m
//  week4_1
//
//  Created by Phurbu Dolma on 6/29/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "TrendingViewController.h"

@interface TrendingViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *feedScrollView;

@end

@implementation TrendingViewController

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
    self.feedScrollView.
    contentSize =
    CGSizeMake(320,1215);
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
