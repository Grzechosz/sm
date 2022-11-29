//
//  ViewController.m
//  Assets
//
//  Created by Grzegorz on 29/11/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_informationButton setTitle:NSLocalizedString(@"Information", nil) forState:UIControlStateNormal];
//    [_informationButton setTitle :NSLocalizedString(@"Information",nil) forState:(UIControlStateHighlighted)];
//    [_informationButton setTitle :NSLocalizedString(@"Information",nil) forState:(UIControlStateFocused)];
    [_image setImage:[UIImage imageNamed:NSLocalizedString(@"image",nil)]];
}


-(IBAction)information {
    UIAlertController *alertDialog= [UIAlertController alertControllerWithTitle :NSLocalizedString(@"Information", nil) message:[NSString stringWithFormat:NSLocalizedString(@"The faculty is running %i programs on graduate and undergraduate level.",nil),4]preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction=[UIAlertAction actionWithTitle:@"OK"
                                                style:UIAlertActionStyleDefault
                                                handler:^(UIAlertAction *action
    ){}];
    [alertDialog addAction:defaultAction];
    [self presentViewController:alertDialog animated:YES completion:nil];
}




@end
