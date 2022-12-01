//
//  SecondViewController.h
//  GPSLogger
//
//  Created by Aaron Parecki on 9/17/15.
//  Copyright © 2015 Esri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *apiEndpointField;
@property (strong, nonatomic) IBOutlet UISegmentedControl *trackingEnabledToggle;
@property (strong, nonatomic) IBOutlet UISwitch *pausesAutomatically;
@property (strong, nonatomic) IBOutlet UISegmentedControl *resumesWithGeofence;
@property (strong, nonatomic) IBOutlet UISegmentedControl *significantLocationMode;
@property (strong, nonatomic) IBOutlet UISegmentedControl *activityType;
@property (strong, nonatomic) IBOutlet UISegmentedControl *desiredAccuracy;
@property (strong, nonatomic) IBOutlet UISegmentedControl *defersLocationUpdates;
@property (strong, nonatomic) IBOutlet UISegmentedControl *pointsPerBatchControl;
@property (strong, nonatomic) IBOutlet UISwitch *includeTrackingStats;
@property (strong, nonatomic) IBOutlet UISwitch *enableNotifications;

- (IBAction)toggleLogging:(UISegmentedControl *)sender;
- (IBAction)togglePausesAutomatically:(UISwitch *)sender;
- (IBAction)resumeWithGeofenceWasChanged:(UISegmentedControl *)sender;
- (IBAction)significantLocationModeWasChanged:(UISegmentedControl *)sender;
- (IBAction)activityTypeControlWasChanged:(UISegmentedControl *)sender;
- (IBAction)desiredAccuracyWasChanged:(UISegmentedControl *)sender;
- (IBAction)defersLocationUpdatesWasChanged:(UISegmentedControl *)sender;
- (IBAction)pointsPerBatchWasChanged:(UISegmentedControl *)sender;
- (IBAction)toggleTrackingStats:(UISwitch *)sender;
- (IBAction)toggleNotificationsEnabled:(UISwitch *)sender;

@end

