//
//  BNRDetailViewController.h
//  Timeline
//
//  Created by Bolot Kerimbaev on 3/14/13.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
