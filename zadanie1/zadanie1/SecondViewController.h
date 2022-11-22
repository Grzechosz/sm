//
//  SecondViewController.h
//  zadanie1
//
//  Created by Grzegorz on 22/11/2022.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SecondViewController;

@protocol SecondViewControllerDelegate <NSObject>

- (void) addItemViewController:(SecondViewController *) controller didFinishEnteringItem: (NSString *) item;

@end

@interface SecondViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameField;

@property NSString *surname;

@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;

//@property IBOutlet UIButton *butt;

@end

NS_ASSUME_NONNULL_END
