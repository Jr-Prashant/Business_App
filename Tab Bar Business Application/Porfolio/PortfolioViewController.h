//
//  PortfolioViewController.h
//  Tab Bar Business Application
//
//  Created by MacBook Pro on 06/11/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PortfolioViewController : UIViewController{
    
    int imageInt;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;

- (IBAction)back:(id)sender;
- (IBAction)next:(id)sender;

@end

NS_ASSUME_NONNULL_END
