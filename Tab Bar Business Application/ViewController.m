//
//  ViewController.m
//  Tab Bar Business Application
//
//  Created by MacBook Pro on 05/11/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.button1.layer.cornerRadius = 5.0;
    self.button2.layer.cornerRadius = 5.0;
    self.button3.layer.cornerRadius = 5.0;
    self.button4.layer.cornerRadius = 5.0;
    self.button5.layer.cornerRadius = 5.0;
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
}


- (IBAction)contactUs:(id)sender {
    
    [(UITabBarController *) self.tabBarController setSelectedIndex:1];
    
}

- (IBAction)aboutUs:(id)sender {
    
    [(UITabBarController *) self.tabBarController setSelectedIndex:3];
    
}

- (IBAction)portfolio:(id)sender {
    
    [(UITabBarController *) self.tabBarController setSelectedIndex:4];
    
}

- (IBAction)services:(id)sender {
    
    [(UITabBarController *) self.tabBarController setSelectedIndex:2];
    
}

@end
