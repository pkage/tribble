//
//  ViewController.m
//  tribble
//
//  Created by iD Student on 6/17/14.
//  Copyright (c) 2014 pk inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	home = @"http://www.google.com";
	[self navigate:home];
	[self.urlbox setHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn
:(UITextField*)textField {
	[self.urlbox resignFirstResponder];
	[self navigate:self.urlbox.text];
	[self.urlbox setHidden:YES];
	return YES;
}
- (IBAction)navButtonPressed:(id)sender {
	[self.urlbox setHidden:!self.urlbox.hidden];
}

- (IBAction)homeButtonPressed:(id)sender {
	[self navigate:home];
}

-(void)navigate:(NSString*)urlString {
    NSURL *url;
	
    if([urlString hasPrefix:@"http://"] || [urlString hasPrefix:@"http:/"] || [urlString hasPrefix:@"http:"]) {
        url = [NSURL URLWithString:urlString];
    }else {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", urlString]];
    }
	
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
    [self.webview loadRequest:urlRequest];
}

-(void)webViewDidFinishLoad:(UIWebView*)webView {
	[self.navbar setTitle:[self.webview stringByEvaluatingJavaScriptFromString:@"document.title"]];
}
@end
