//
//  CheckWeatherViewController.m
//  Dry Clothes
//
//  Created by Jonas Lauritsen on 03/08/15.
//  Copyright (c) 2015 Jonas Lauritsen. All rights reserved.
//

#import "CheckWeatherViewController.h"

typedef NS_ENUM(NSInteger, WeatherStatus) {
    WeatherStatusGood = 0,
    WeatherStatusNotGood,
    WeatherStatusVeryGood,
    WeatherStatusVeryBad
};

@interface CheckWeatherViewController()
@property (weak, nonatomic) IBOutlet UILabel *isWeatherGoodLabel;
@property (weak, nonatomic) IBOutlet UIView *backgroundView;


@property (nonatomic) WeatherStatus weatherStatus;
@end

@implementation CheckWeatherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.weatherStatus = WeatherStatusNotGood;
}

- (void)setWeatherStatus:(WeatherStatus)weatherStatus
{
    switch (weatherStatus) {
        case WeatherStatusGood:
            self.isWeatherGoodLabel.text = @"It's good";
            [self.backgroundView setBackgroundColor:[UIColor greenColor]];
            break;
        case WeatherStatusVeryGood:
            self.isWeatherGoodLabel.text = @"It's very good";
            [self.backgroundView setBackgroundColor:[UIColor yellowColor]];
            break;
        case WeatherStatusNotGood:
            self.isWeatherGoodLabel.text = @"It's not good";
            [self.backgroundView setBackgroundColor:[UIColor blueColor]];
            break;
        case WeatherStatusVeryBad:
            self.isWeatherGoodLabel.text = @"The weather is very bad, just don't";
            [self.backgroundView setBackgroundColor:[UIColor redColor]];
        default:
            break;
    }
}

@end
