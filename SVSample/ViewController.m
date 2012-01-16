//
//  ViewController.m
//  SVSample
//
//  Created by subicura on 12. 1. 16..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)clickCallButton:(id)sender
{
    [self performSegueWithIdentifier:@"Call" sender:self];
}

@end
