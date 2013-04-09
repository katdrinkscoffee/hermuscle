//
//  DashboardScreen.h
//  HerMuscle
//
//  Created by Katarina Djordjevic on 3/5/13.
//
//

#import <UIKit/UIKit.h>

@interface DashboardScreen : UIViewController{
    
    BOOL checkboxSelected;
	IBOutlet UIButton *checkboxButtonDay1;
    IBOutlet UIButton *checkboxButtonDay2;
    IBOutlet UIButton *checkboxButtonDay3;
    IBOutlet UIButton *checkboxButtonDay4;
    IBOutlet UIButton *checkboxButtonDay5;
    IBOutlet UIButton *checkboxButtonDay6;
    IBOutlet UIButton *checkboxButtonDay7;
}

@property (weak, nonatomic) IBOutlet UIProgressView *ProgressBar;

@property (strong, nonatomic) IBOutlet UIStepper *ourStepper;
@property (strong, nonatomic) IBOutlet UILabel *stepperValueLabel;
- (IBAction)WeekStepper:(id)sender;



- (IBAction)checkboxButtonDay1:(id)sender;

- (IBAction)checkboxButtonDay2:(id)sender;

- (IBAction)checkboxButtonDay3:(id)sender;

- (IBAction)checkboxButtonDay4:(id)sender;

- (IBAction)checkboxButtonDay5:(id)sender;

- (IBAction)checkboxButtonDay6:(id)sender;

- (IBAction)checkboxButtonDay7:(id)sender;



@end
