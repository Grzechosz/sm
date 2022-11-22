//
//  ViewController.h
//  zadanie1
//
//  Created by Grzegorz on 22/11/2022.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewControllerDelegate>

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;
@property (nonatomic, weak) IBOutlet UITextField *inputSurnameField;


-(IBAction)enter;
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end

