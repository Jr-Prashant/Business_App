//
//  PortfolioViewController.m
//  Tab Bar Business Application
//
//  Created by MacBook Pro on 06/11/23.
//

#import "PortfolioViewController.h"

@interface PortfolioViewController ()

@end

@implementation PortfolioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    imageInt = 1;
    [self imageGallery];
    self.button1.layer.cornerRadius = 5;
    self.button2.layer.cornerRadius = 5;
    self.imageView.layer.cornerRadius = 10;
    
}

- (IBAction)next:(id)sender {
    imageInt += 1;
    [self imageGallery];
}

- (IBAction)back:(id)sender {
    imageInt -= 1;
    [self imageGallery];
}

-(void) imageGallery{
    self.label.text = [NSString stringWithFormat:@"%i/5", imageInt];
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Image%i.png", imageInt]];
    
    if (imageInt == 1) {
        _button1.enabled = NO;
        self.button1.alpha = 0.5;
    }
    else if (imageInt == 5) {
        _button2.enabled = NO;
        self.button2.alpha = 0.5;
    }
    else{
        _button1.enabled = YES;
        self.button1.alpha = 1.0;
        _button2.enabled = YES;
        self.button2.alpha = 1.0;
    }
}

@end
