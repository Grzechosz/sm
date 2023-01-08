//
//  ViewController.m
//  ios3
//
//  Created by Grzegorz on 13/12/2022.
//
#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self becomeFirstResponder];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self showShakeDetectedAlert];
    }
}

-(BOOL)canBecomeFirstResponder {
    return YES;
}

-(IBAction)showShakeDetectedAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Shake gesture detected" message:@"Do you want to change the background color?"preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *yesButton = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        CGFloat red   = arc4random_uniform(255)/255.0;
        CGFloat blu   = arc4random_uniform(255)/255.0;
        CGFloat green = arc4random_uniform(255)/255.0;
        self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blu alpha:1.0];}];
    
    UIAlertAction *noButton = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
    
    [alertController addAction:yesButton];
    [alertController addAction:noButton];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (IBAction) tapGesture:(UITapGestureRecognizer *)sender {
    _gestureLabel.text = @"Tap detected";
}

- (IBAction) pinchGesture:(UIPinchGestureRecognizer *)sender {
    _gestureLabel.text = @"Pinch detected";
}

- (IBAction) swipeGesture:(UISwipeGestureRecognizer *)sender {
    _gestureLabel.text = @"Swipe detected";
}

- (IBAction) longPressGesture:(UILongPressGestureRecognizer *)sender {
    _gestureLabel.text = @"Long press detected";
        }
        
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        if ([segue.identifier isEqualToString:@"sendSurnameSegue"]) {
            SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        }
}
@end
