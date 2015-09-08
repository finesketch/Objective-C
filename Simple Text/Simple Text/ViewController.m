//
//  ViewController.m
//  Simple Text
//
//  Created by Kyle Chew on 8/15/15.
//  Copyright (c) 2015 FineSketch. All rights reserved.
//

#import <AppKit/AppKit.h>
#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    [_textView setFont:[NSFont fontWithName:@"Menlo Regular" size:10]];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)mouseDown:(NSEvent *)theEvent {
    
    NSMenu *theMenu = [[NSMenu alloc] initWithTitle:@"Contextual Menu"];
    [theMenu insertItemWithTitle:@"Beep" action:@selector(beep:) keyEquivalent:@"" atIndex:0];
    [theMenu insertItemWithTitle:@"Honk" action:@selector(honk:) keyEquivalent:@"" atIndex:1];
    
    [NSMenu popUpContextMenu:theMenu withEvent:theEvent forView:self.view];
}

- (void)beep:(id)eventObject
{
    
}

- (void)honk:(id)eventObject
{
    
}

@end
