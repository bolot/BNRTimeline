//
//  BNRDetailViewController.m
//  Timeline
//
//  Created by Bolot Kerimbaev on 3/14/13.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import "BNRDetailViewController.h"

@interface BNRDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
- (void)configureView;
@end

@implementation BNRDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem.timeStamp description];
        self.photoImageView.image = self.detailItem.image;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)share:(id)sender {
    NSArray *items = @[self.detailItem.thumbnail, @"@bignerdranch iOS tutorial at @mdevcon by @bolot"];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:nil];
    [self presentViewController:activityViewController animated:YES completion:nil];
}

@end
