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
    UIImage *_thumbnail;
}

@dynamic timeStamp;
@dynamic image;
@dynamic imageData;
@dynamic thumbnail;
@dynamic thumbnailData;

// bolot@bignerdranch.com


- (void)setImage:(UIImage *)image
{
    _image = image;
    self.imageData = UIImageJPEGRepresentation(image, 0.8);
    [self setThumbnailDataFromImage:image];
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

- (UIImage *)thumbnail
{
    if (!self.thumbnailData) {
        return nil;
    }
    if (!_thumbnail) {
        _thumbnail = [UIImage imageWithData:self.thumbnailData];
    }
    return _thumbnail;
}

- (void)setThumbnailDataFromImage:(UIImage *)image
{
    UIImage *smallImage = [self simpleThumbnailForImage:image];
    [self setThumbnail:smallImage];
    NSData *data = UIImageJPEGRepresentation(smallImage, 0.6);
    [self setThumbnailData:data];
}

- (UIImage *)simpleThumbnailForImage:(UIImage *)image
{
    CGRect smallRect = CGRectMake(0, 0, 320, 200);
    UIGraphicsBeginImageContext(smallRect.size);
    [image drawInRect:smallRect];
    UIImage *smallImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return smallImage;
}
@end
