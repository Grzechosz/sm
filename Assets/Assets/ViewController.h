//
//  ViewController.h
//  Assets
//
//  Created by Grzegorz on 29/11/2022.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIButton *informationButton;
@property (nonatomic, weak) IBOutlet UIImageView *image;

-(IBAction)information;

@end

