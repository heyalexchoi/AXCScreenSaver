//
//  AppDelegate.swift
//  ScreenSaverApp
//
//  Created by Alex Choi on 4/5/16.
//  Copyright © 2016 CHOI. All rights reserved.
//

import Cocoa


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let window = NSWindow(contentRect: NSMakeRect(10, 10, 300, 300),
                          styleMask: NSResizableWindowMask,
                          backing: NSBackingStoreType.Buffered,
                          defer: false)

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let view = ScreenSaverVideoView(frame: window.frame)
        window.contentView?.addSubview(view)
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

}

