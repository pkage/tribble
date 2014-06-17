//
//  ViewController.h
//  tribble
//
//  Created by iD Student on 6/17/14.
//  Copyright (c) 2014 pk inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
	NSString *home;
}

@property (weak, nonatomic) IBOutlet UITextField *urlbox;
@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UINavigationItem *navbar;

- (IBAction)navButtonPressed:(id)sender;
- (IBAction)homeButtonPressed:(id)sender;


@end
