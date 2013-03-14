//
//  BNRPhotoCell.h
//  Timeline
//
//  Created by Bolot Kerimbaev on 3/14/13.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRPhotoCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *timeStampLabel;

@end
