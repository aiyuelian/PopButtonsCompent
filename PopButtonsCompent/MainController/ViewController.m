//
//  ViewController.m
//  AURosetteView
//
//  Created by Emil Wojtaszek on 22.06.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

// Controllers
#import "ViewController.h"

// Rosette
#import "AURosetteView.h"
#import "AURosetteItem.h"

@interface ViewController ()

@end

@implementation ViewController

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIImage* twitterImage = [UIImage imageNamed:@"rosetta_twitter.png"];
    UIImage* facebookImage = [UIImage imageNamed:@"rosetta_facebook.png"];
    UIImage* mailImage = [UIImage imageNamed:@"rosetta_mail.png"];


    // create rosette items
    AURosetteItem* twitterItem = [[AURosetteItem alloc] initWithNormalImage:twitterImage 
                                                           highlightedImage:nil 
                                                                     target:self 
                                                                     action:@selector(twitterAction:)];

    AURosetteItem* facebookItem = [[AURosetteItem alloc] initWithNormalImage:facebookImage 
                                                            highlightedImage:nil 
                                                                      target:self 
                                                                      action:@selector(facebookAction:)];

    AURosetteItem* mailItem = [[AURosetteItem alloc] initWithNormalImage:mailImage 
                                                        highlightedImage:nil 
                                                                  target:self 
                                                                  action:@selector(mailAction:)];

    // create rosette view
    AURosetteView* rosette = [[AURosetteView alloc] initWithItems: [NSArray arrayWithObjects: twitterItem, facebookItem, mailItem, nil]];
    [rosette setCenter:CGPointMake(100.0f, 100.0f)];
    [self.view addSubview:rosette];
    
}

#pragma mark -
#pragma mark Actions

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)twitterAction:(id)sender {
    NSLog(@"Twitter");
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)facebookAction:(id)sender {
    NSLog(@"Facebook");
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)mailAction:(id)sender {
    NSLog(@"Mail");
}

@end
