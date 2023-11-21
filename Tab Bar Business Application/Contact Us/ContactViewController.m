//
//  ContactViewController.m
//  Tab Bar Business Application
//
//  Created by MacBook Pro on 06/11/23.
//

#import "ContactViewController.h"
#import "MapPin.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.button1.layer.cornerRadius = 5.0;
    self.button2.layer.cornerRadius = 5.0;
    self.button3.layer.cornerRadius = 5.0;
    self.button4.layer.cornerRadius = 5.0;
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];           // To remove text from Back Button
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = 41.720133586805986;
    location.longitude = -87.75485186384748;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    [self.mapView addAnnotation:ann];
}

- (IBAction)callUs:(id)sender {
    
//    In real device if you press call us button then device get calling
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:123233434"] options:@{} completionHandler:nil];
    
}

- (IBAction)directions:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://maps.apple.com/maps?daddr=41.720133586805986, -87.75485186384748"] options:@{} completionHandler:nil];
    
}

@end
