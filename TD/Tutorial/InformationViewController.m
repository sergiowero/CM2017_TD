//
//  InformationViewController.m
//  proyecto-final
//
//  Created by Amalia Gastelum on 12/1/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import "InformationViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface InformationViewController ()

@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;
@property BOOL played;
@end

@implementation InformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.played = NO;
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(moviePlayBackDidFinished:)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification
                                               object:self.moviePlayer];
    NSURL *url =[[NSBundle mainBundle]URLForResource:@"comunidad_video" withExtension:@"mp4"];
    self.moviePlayer = [[MPMoviePlayerController alloc]initWithContentURL:url];
    //[self.moviePlayer prepareToPlay];
    self.moviePlayer.controlStyle = MPMovieControlStyleNone;
    self.moviePlayer.scalingMode = MPMovieScalingModeAspectFill;
    self.moviePlayer.view.backgroundColor = [UIColor blackColor];
    self.moviePlayer.repeatMode = MPMovieRepeatModeOne;
    self.moviePlayer.view.frame = self.view.frame;
    if (self.sliderIndex == 4) {
        [self.view insertSubview: self.moviePlayer.view atIndex:0];
        UIView *opacity = [[UIView alloc]init];
        opacity.frame = self.view.frame;
        opacity.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.55];
        [self.view insertSubview: opacity atIndex:1];
        [self.moviePlayer play];
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if (self.sliderIndex == 4) {
        if (self.moviePlayer != nil && self.played == true) {
            return;
        }
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)moviePlayBackDidFinished:(id)sender {
    // do some computations
    [self.moviePlayer play];
}



@end
