//
//  ScreenSaver.swift
//  AXCScreenSaver
//
//  Created by Alex Choi on 4/5/16.
//  Copyright © 2016 CHOI. All rights reserved.
//

import Foundation
import AppKit
import AVKit
import AVFoundation

class ScreenSaverVideoView: NSView {
    
    let player: AVPlayer
    let videoView: AVPlayerView
    
    override init(frame frameRect: NSRect) {
        let url = NSBundle.mainBundle().URLForResource("video", withExtension: "mp4")!
        player = AVPlayer(URL: url)
        videoView = AVPlayerView(frame: frameRect)
        videoView.player = player
        super.init(frame: frameRect)
        autoresizingMask = [.ViewHeightSizable, .ViewWidthSizable]
        player.play()
        addSubview(videoView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func method() {
        /*
         NSBundle *bundle = [NSBundle mainBundle];
         NSString *moviePath = [bundle pathForResource:@"disc" ofType:@"mp4"];
         NSURL *movieURL = [[NSURL fileURLWithPath:moviePath] retain];
         
         theMoviPlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
         theMoviPlayer.controlStyle = MPMovieControlStyleFullscreen;
         theMoviPlayer.view.transform = CGAffineTransformConcat(theMoviPlayer.view.transform, CGAffineTransformMakeRotation(M_PI_2));
         UIWindow *backgroundWindow = [[UIApplication sharedApplication] keyWindow];
         [theMoviPlayer.view setFrame:backgroundWindow.frame];
         [backgroundWindow addSubview:theMoviPlayer.view];
         */
    }
    
//    override func drawRect(dirtyRect: NSRect) {
//        super.drawRect(dirtyRect)
//        NSColor.redColor().set()
//        NSRectFill(bounds)
//    }
    
    
}
