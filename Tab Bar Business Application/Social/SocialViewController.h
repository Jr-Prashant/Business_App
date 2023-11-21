//
//  SocialViewController.h
//  Tab Bar Business Application
//
//  Created by MacBook Pro on 07/11/23.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SocialViewController : UIViewController{
    
    NSTimer *timer;
    
}

@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *actInd;

@property(strong, nonatomic) NSString *detail;

@end

NS_ASSUME_NONNULL_END
