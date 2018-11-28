//
//  MovieousMicrophoneConfiguration.h
//  Movieous
//
//  Created by Chris Wang on 2018/9/26.
//  Copyright © 2018 Movieous Team. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

@protocol MovieousMicrophoneConfiguration <NSObject>

@property (assign, nonatomic) NSUInteger numberOfChannels;

@end
