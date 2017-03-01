//
//  ViewController.h
//  LocalizationHelper
//
//  Created by Serge Moskalenko on 28.02.17.
//  http://camopu.rhorse.ru/LocalizationHelper
//  https://github.com/sergemoskalenko/LocalizationHelper
//  Copyright © 2017 Serge Moskalenko. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTabView *tabView;
@property (unsafe_unretained) IBOutlet NSTextView *sourceTextView;
@property (unsafe_unretained) IBOutlet NSTextView *localizedTextView;
@property (unsafe_unretained) IBOutlet NSTextView *resultTextView;
@property (weak) IBOutlet NSTextField *infoLabelView;


- (IBAction)clearButtonAction:(NSButton *)sender;
- (IBAction)heplButtonAction:(NSButton *)sender;


@end

