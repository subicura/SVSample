//
//  RootViewController.m
//  SVSample
//
//  Created by subicura on 12. 1. 16..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (IBAction)clickPostButton:(id)sender
{
    [self performSegueWithIdentifier:@"Post" sender:self];
}

@end
