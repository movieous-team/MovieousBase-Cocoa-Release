//
//  MovieousMicrophoneConfiguration.h
//  MovieousBase
//
//  Created by Chris Wang on 2018/9/26.
//  Copyright © 2018 Movieous Team. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

/**
 * Configuration object used to specify microphone parameters.
 */
@protocol MovieousMicrophoneConfiguration <NSObject>

/**
 * Mute sound while recording, if you want to record a movie with no sound.
 * The default is NO.
 */
@property (nonatomic, assign) BOOL mute;

@end
