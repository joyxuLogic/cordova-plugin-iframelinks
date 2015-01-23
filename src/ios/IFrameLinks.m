#import "IFrameLinks.h"

@implementation IFrameLinks

- (BOOL)shouldOverrideLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSURL *url = [request URL];
    NSDictionary *settings = [(CDVViewController *)self.viewController settings];
    
    if ([[url scheme] isEqualToString:@"maps"] || [[settings objectForKey:@"launchexternalforhost"] isEqualToString:[url host]]) {
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            [[UIApplication sharedApplication] openURL:url];
            return YES;
        }
    }

    return NO;
}

@end
