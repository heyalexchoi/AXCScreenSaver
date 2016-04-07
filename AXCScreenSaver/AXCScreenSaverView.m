//
//  AXCScreenSaverView.m
//  AXCScreenSaver
//
//  Created by Alex Choi on 4/5/16.
//  Copyright © 2016 CHOI. All rights reserved.
//

#import "AXCScreenSaverView.h"
#import "AXCScreenSaver-Swift.h"

@implementation AXCScreenSaverView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
        ScreenSaverVideoView * screenSaverView = [[ScreenSaverVideoView alloc] initWithFrame:frame];
        [self addSubview:screenSaverView];
        
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
    [[NSColor redColor] set];
    NSRectFill(rect);
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
