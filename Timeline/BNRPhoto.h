//
//  BNRPhoto.h
//  Timeline
//
//  Created by Bolot Kerimbaev on 3/14/13.
//  Copyright (c) 2013 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface BNRPhoto : NSManagedObject

@property (nonatomic, retain) NSDate *timeStamp;
@property (nonatomic, retain) UIImage *image;
@property (nonatomic, retain) NSData *imageData;

@end
