//
//  SecondViewController.h
//  ios3
//
//  Created by Grzegorz on 13/12/2022.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController <CLLocationManagerDelegate>

{
    CLLocationManager *locationManager;
    CLGeocoder *geocoder;
    CLPlacemark *placemark;
}

@property(weak, nonatomic) IBOutlet UILabel *latitudeLabel;
@property(weak, nonatomic) IBOutlet UILabel *longitudeLabel;
@property(weak, nonatomic) IBOutlet UILabel *addressLabel;

@property(weak, nonatomic) IBOutlet UITextField *latitudeText;
@property(weak, nonatomic) IBOutlet UITextField *longitudeText;
@property(weak, nonatomic) IBOutlet UITextView *addressText;
@property(weak, nonatomic) IBOutlet UIButton *currentLocationButton;
@property(weak, nonatomic) IBOutlet UIButton *goBackButton;
- (IBAction)getCurrentLocation:(id)sender;

@end

NS_ASSUME_NONNULL_END
