//
//  Tab_Bar_Business_ApplicationUITestsLaunchTests.m
//  Tab Bar Business ApplicationUITests
//
//  Created by MacBook Pro on 05/11/23.
//

#import <XCTest/XCTest.h>

@interface Tab_Bar_Business_ApplicationUITestsLaunchTests : XCTestCase

@end

@implementation Tab_Bar_Business_ApplicationUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
