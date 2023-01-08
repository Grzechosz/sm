//
//  ViewController.h
//  ios3
//
//  Created by Grzegorz on 13/12/2022.
//

#import <UIKit/UIKit.h>




@interface ViewController : UIViewController


@property(weak, nonatomic) IBOutlet UILabel *gestureLabel;
@property(weak, nonatomic)IBOutlet UIButton *nextButton;

- (IBAction) tapGesture:(UITapGestureRecognizer *) sender;
- (IBAction) pinchGesture:(UIPinchGestureRecognizer *) sender;
- (IBAction) swipeGesture:(UISwipeGestureRecognizer *) sender;
- (IBAction) longPressGesture:(UILongPressGestureRecognizer *) sender;
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end

