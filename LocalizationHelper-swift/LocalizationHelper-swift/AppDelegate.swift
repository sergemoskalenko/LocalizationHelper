//
//  AppDelegate.swift
//  LocalizationHelper-swift
//
//  Created by Serge Moskalenko on 01.03.17.
//  http://camopu.rhorse.ru/LocalizationHelper
//  https://github.com/sergemoskalenko/LocalizationHelper
//  Copyright © 2017 Serge Moskalenko. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBAction func helpAction(_ sender: Any) {
        print("help")
        NSWorkspace.shared().open(URL(string: "http://camopu.rhorse.ru/LocalizationHelper")!)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

