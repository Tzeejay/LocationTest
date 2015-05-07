//
//  ViewController.h
//  Test
//
//  Created by Constantin Jacob on 07.05.15.
//  Copyright (c) 2015 Constantin Jacob. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property IBOutlet UILabel *label;

@end

