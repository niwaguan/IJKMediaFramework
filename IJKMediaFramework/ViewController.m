//
//  ViewController.m
//  IJKMediaFramework
//
//  Created by Gaoyang on 2021/7/16.
//

#import "ViewController.h"
#import <IJKMediaFrameworkWithSSL/IJKMediaFrameworkWithSSL.h>

@interface ViewController ()

/// player
@property (nonatomic, readwrite, strong) IJKFFMoviePlayerController *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    IJKFFOptions *options = [IJKFFOptions optionsByDefault];
    _player = [[IJKFFMoviePlayerController alloc] initWithContentURLString:@"https://video.topgamers.cn/88c292fd31699ae9284704fa7b58a36f15746863949111_bit40.mp4" withOptions:options];
    _player.scalingMode = IJKMPMovieScalingModeAspectFit;
    _player.shouldAutoplay = YES;
    [self.view addSubview:_player.view];
    _player.view.frame = self.view.bounds;
    _player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [_player prepareToPlay];
}


@end
