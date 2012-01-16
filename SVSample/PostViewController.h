//
//  PostViewController.h
//  SVSample
//
//  Created by subicura on 12. 1. 16..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostViewController : UIViewController
{
    NSOperationQueue *queue;
}

- (IBAction)clickTestButton:(id)sender;
- (IBAction)clickCancelButton:(id)sender;

@end
