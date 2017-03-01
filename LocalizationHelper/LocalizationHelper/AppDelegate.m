//
//  AppDelegate.m
//  LocalizationHelper
//
//  Created by Serge Moskalenko on 28.02.17.
//  http://camopu.rhorse.ru/LocalizationHelper
//  https://github.com/sergemoskalenko/LocalizationHelper
//  Copyright © 2017 Serge Moskalenko. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (IBAction)helpAction:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://camopu.rhorse.ru/LocalizationHelper"]];
}
@end
