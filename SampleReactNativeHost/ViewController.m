//
//  ViewController.m
//  SampleReactNativeHost
//
//  Created by Marc Bernstein on 8/22/16.
//  Copyright © 2016 test. All rights reserved.
//

#import "ViewController.h"
#import "RCTRootView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)launchButtonPressed:(id)sender {
    NSLog(@"Launch Button Pressed");
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"RNHighScores"
                         initialProperties :
                           @{
                             @"scores" : @[
                              @{
                                  @"name" : @"Alex",
                                  @"value": @"42"
                               },
                              @{
                                  @"name" : @"Joel",
                                  @"value": @"10"
                               }
                             ]
                           }
                          launchOptions    : nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
