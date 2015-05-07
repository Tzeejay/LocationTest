//
//  ViewController.m
//  Test
//
//  Created by Constantin Jacob on 07.05.15.
//  Copyright (c) 2015 Constantin Jacob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) CLLocationManager *manager;

@end

@implementation ViewController
@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if (_manager == nil) {
        _manager = [[CLLocationManager alloc] init];
        [_manager requestAlwaysAuthorization];
    }
    
    _manager.delegate = self;
    _manager.desiredAccuracy = kCLLocationAccuracyBest;
    [_manager startUpdatingLocation];
}


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    for (CLLocation *location in locations) {
        NSLog(@"%@", location.description);
        label.text = location.description;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
