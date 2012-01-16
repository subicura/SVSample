//
//  PostViewController.m
//  SVSample
//
//  Created by subicura on 12. 1. 16..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "PostViewController.h"
#import "SVProgressHUD.h"
#import "AFJSONRequestOperation.h"

@implementation PostViewController
-(id)initWithCoder:(NSCoder *)decoder {
    if ((self = [super initWithCoder:decoder])) {
		queue = [[NSOperationQueue alloc] init];       
    }
    return self;
}

- (IBAction)clickTestButton:(id)sender
{
    [SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeGradient];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://search.twitter.com/search.json?q=test"]];
    [request setHTTPMethod:@"GET"];
    AFJSONRequestOperation *operation =  [AFJSONRequestOperation JSONRequestOperationWithRequest:request 
        success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {            
            [SVProgressHUD dismiss];
        } 
        failure:^(NSURLRequest *request, NSURLResponse *response, NSError *error) {
            [SVProgressHUD dismissWithError:@"error" afterDelay:1];
        }];
    [queue addOperation:operation];
}

- (IBAction)clickCancelButton:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

@end
