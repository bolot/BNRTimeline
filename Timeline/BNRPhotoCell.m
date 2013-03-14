//
//  BNRPhotoCell.m
//  Timeline
//
//  Created by Bolot Kerimbaev on 3/14/13.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import "BNRPhotoCell.h"

@implementation BNRPhotoCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
