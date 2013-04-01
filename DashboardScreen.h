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
IBOutlet UIButton *checkboxButton1;
IBOutlet UIButton *checkboxButton2;
IBOutlet UIButton *checkboxButton3;
IBOutlet UIButton *checkboxButton4;
IBOutlet UIButton *checkboxButton5;
IBOutlet UIButton *checkboxButton6;
IBOutlet UIButton *checkboxButton7;

}
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
