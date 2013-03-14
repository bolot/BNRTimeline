//
//  BNRPhoto.m
//  Timeline
//
//  Created by Bolot Kerimbaev on 3/14/13.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import "BNRPhoto.h"


@implementation BNRPhoto
{
    UIImage *_image;
}

@dynamic timeStamp;
@dynamic image;
@dynamic imageData;


- (void)setImage:(UIImage *)image
{
    _image = image;
    self.imageData = UIImageJPEGRepresentation(image, 0.8);
}

- (UIImage *)image
{
    if (!self.imageData) {
        return nil;
    }
    if (!_image) {
        _image = [UIImage imageWithData:self.imageData];
    }
    return _image;
}

@end
