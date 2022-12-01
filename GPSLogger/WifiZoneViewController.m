//
//  WifiZoneViewController.m
//  Overland
//
//  Created by Aaron Parecki on 3/2/19.
//  Copyright © 2019 Aaron Parecki. All rights reserved.
//

#import "WifiZoneViewController.h"
#import "GLManager.h"

@interface WifiZoneViewController ()

@end

@implementation WifiZoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    self.wifiNameField.backgroundColor = [UIColor clearColor];
    self.latitudeField.backgroundColor = [UIColor clearColor];
    self.longitudeField.backgroundColor = [UIColor clearColor];

    if([GLManager sharedManager].wifiZoneName == nil) {
        self.wifiNameField.text = [GLManager currentWifiHotSpotName];
        self.wifiNameField.backgroundColor = [UIColor colorWithRed:0.82 green:1.0 blue:0.82 alpha:1.0];
        if([GLManager sharedManager].lastLocation) {
            CLLocation *loc = [GLManager sharedManager].lastLocation;
            self.latitudeField.text = [NSString stringWithFormat:@"%.5f", loc.coordinate.latitude];
            self.longitudeField.text = [NSString stringWithFormat:@"%.5f", loc.coordinate.longitude];
            self.latitudeField.backgroundColor = [UIColor colorWithRed:0.82 green:1.0 blue:0.82 alpha:1.0];
            self.longitudeField.backgroundColor = [UIColor colorWithRed:0.82 green:1.0 blue:0.82 alpha:1.0];
        }
    } else {
        self.wifiNameField.text = [GLManager sharedManager].wifiZoneName;
        self.latitudeField.text = [GLManager sharedManager].wifiZoneLatitude;
        self.longitudeField.text = [GLManager sharedManager].wifiZoneLongitude;
    }
}

- (IBAction)saveButtonWasTapped:(UIButton *)sender {
    if([@"" isEqualToString:self.wifiNameField.text]) {
        [[GLManager sharedManager] saveNewWifiZone:nil withLatitude:nil andLongitude:nil];
    } else {
        [[GLManager sharedManager] saveNewWifiZone:self.wifiNameField.text withLatitude:self.latitudeField.text andLongitude:self.longitudeField.text];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)resetButtonWasTapped:(UIButton *)sender {
    [[GLManager sharedManager] saveNewWifiZone:nil withLatitude:nil andLongitude:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
