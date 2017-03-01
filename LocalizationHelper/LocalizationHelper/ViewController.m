//
//  ViewController.m
//  LocalizationHelper
//
//  Created by Serge Moskalenko on 28.02.17.
//  http://camopu.rhorse.ru/LocalizationHelper
//  https://github.com/sergemoskalenko/LocalizationHelper
//  Copyright © 2017 Serge Moskalenko. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)tabView:(NSTabView *)tabView didSelectTabViewItem:(NSTabViewItem *)tabViewItem
{
    NSLog(@"Tab: %@", tabViewItem.identifier);

    long ind = [tabViewItem.identifier integerValue];
    switch (ind) {
        case 1:
            // source
        {
            self.infoLabelView.stringValue = @"Paste sourse strings";
        }
            break;
        case 2:
            // localized
        {
            self.infoLabelView.stringValue = @"Paste translation strings";
        }
            break;
        case 3:
            // result
        {
            NSString* sourceString = [self.sourceTextView.string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSArray* sourceArray = [sourceString componentsSeparatedByString:@"\n"];
            NSString* localizedString = [self.localizedTextView.string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSMutableArray* localizedArray = [NSMutableArray arrayWithArray:[localizedString componentsSeparatedByString:@"\n"]];
        
            for (int i =  0;i < sourceArray.count; i++)
            {
                NSString* oneStr = sourceArray[i];
                if ([oneStr hasPrefix:@"/*"])
                {
                    localizedArray[i] = oneStr;
                    NSString* dataString = sourceArray[i + 1];
                    while ([dataString containsString:@"  "])
                        dataString = [dataString stringByReplacingOccurrencesOfString:@"  " withString:@" "];
                    
                    NSArray* dataStringPartsArray = [dataString componentsSeparatedByString:@" = "];
                    NSString* keyPart = dataStringPartsArray[0];
                    NSString* dataStringLocalized = localizedArray[i + 1];
                    dataStringLocalized = [dataStringLocalized stringByReplacingOccurrencesOfString:keyPart withString:keyPart options:NSCaseInsensitiveSearch range:NSMakeRange(0, [dataStringLocalized length]) ];
                    localizedArray[i + 1] = dataStringLocalized;
                }
            }
            self.resultTextView.string = [localizedArray componentsJoinedByString:@"\n"];
            
            [[NSPasteboard generalPasteboard] clearContents];
            [[NSPasteboard generalPasteboard] setString:self.resultTextView.string forType:NSStringPboardType];
            
            self.infoLabelView.stringValue = @"Copied to Pasteboard!";
        }
            break;
        default:
            break;
    }
}

- (IBAction)clearButtonAction:(NSButton *)sender {
    NSLog(@"click");
    
    self.sourceTextView.string = @"";
    self.localizedTextView.string = @"";
    self.resultTextView.string = @"";
    self.infoLabelView.stringValue = @"!";
    [self.tabView selectTabViewItemAtIndex:0];
    // [[NSPasteboard generalPasteboard] clearContents];
}

- (IBAction)heplButtonAction:(NSButton *)sender {
    AppDelegate* appDelegate = (AppDelegate *)[[NSApplication sharedApplication] delegate];
    [appDelegate helpAction:self];
}
@end
