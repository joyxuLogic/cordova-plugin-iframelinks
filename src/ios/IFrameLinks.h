#import <Cordova/CDV.h>

@interface IFrameLinks: CDVPlugin

- (BOOL)shouldOverrideLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType;

@end
