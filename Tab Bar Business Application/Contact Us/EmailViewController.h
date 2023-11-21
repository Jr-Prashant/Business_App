//
//  EmailViewController.h
//  Tab Bar Business Application
//
//  Created by MacBook Pro on 06/11/23.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUI.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmailViewController : UIViewController <UITextFieldDelegate, MFMailComposeViewControllerDelegate> {
    
    
    
}

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextView *messageField;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)dismissKeyboard:(id)sender;
- (IBAction)email:(id)sender;

@end

NS_ASSUME_NONNULL_END
