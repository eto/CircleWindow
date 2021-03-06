//
//  AppDelegate.swift
//  CircleWindow
//
//  Created by Koichiro Eto on 2020/08/05.
//  Copyright © 2020 Koichiro Eto. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Create the window and set the content view. 
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            //styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            styleMask: [.borderless],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
        guard let w = NSApplication.shared.windows.first else { return }
        w.isOpaque = false
        w.backgroundColor = .clear
        w.isMovableByWindowBackground = true
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

