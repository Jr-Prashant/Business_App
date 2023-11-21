//
//  EmailViewController.m
//  Tab Bar Business Application
//
//  Created by MacBook Pro on 06/11/23.
//

#import "EmailViewController.h"

@interface EmailViewController ()

@end

@implementation EmailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.button.layer.cornerRadius = 5;
    self.messageField.layer.cornerRadius = 5;
 
    self.messageField.delegate = self;
    
    self.navigationItem.title = @"Email Us";        // Set title in navigation item
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)email:(id)sender {
    
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
    [composer setMailComposeDelegate:self];
    
    if ([MFMailComposeViewController canSendMail]) {
        
        [composer setToRecipients:@[@"123@abc.com"]];
        [composer setSubject:@"Message from my app"];
        
        [composer setMessageBody:[NSString stringWithFormat:@"Name: %@\nEmail: %@\n\nMessage: %@", self.nameField.text, self.emailField.text, self.messageField.text] isHTML:NO];
        
        [self presentViewController:composer animated:YES completion:nil];
        
    } else{
        
        NSLog(@"can't send mail");
        
    }
    
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)dismissKeyboard:(id)sender {
    
    [self resignFirstResponder];
    
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(nonnull NSString *)text{
    
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
        return  YES;
    }
    
    [textView resignFirstResponder];
    
    return NO;
}

@end
