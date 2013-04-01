//
//  DashboardScreen.m
//  HerMuscle
//
//  Created by Katarina Djordjevic on 3/5/13.
//
//

#import "DashboardScreen.h"

@interface DashboardScreen ()

@end

@implementation DashboardScreen


- (IBAction)WeekStepper:(id)sender
{
    double stepperValue = _ourStepper.value;
    self.stepperValueLabel.text = [NSString stringWithFormat:@"%.f", stepperValue];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.ourStepper.minimumValue = 1;
    self.ourStepper.maximumValue = 52;
    self.ourStepper.stepValue = 1;
    self.ourStepper.wraps = YES;
    self.ourStepper.autorepeat = YES;
    self.ourStepper.continuous = YES;
    self.stepperValueLabel.text = [NSString stringWithFormat:@"%.f", _ourStepper.value];

    checkboxSelected = 0;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setOurStepper:nil];
    [self setStepperValueLabel:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)checkboxButtonDay1:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButton1 setSelected:YES];
		checkboxSelected = 1;
	} else {
		[checkboxButton1 setSelected:NO];
		checkboxSelected = 0;
	}
}
- (IBAction)checkboxButtonDay2:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButton2 setSelected:YES];
		checkboxSelected = 1;
	} else {
		[checkboxButton2 setSelected:NO];
		checkboxSelected = 0;
	}
}
- (IBAction)checkboxButtonDay3:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButton3 setSelected:YES];
		checkboxSelected = 1;
	} else {
		[checkboxButton3 setSelected:NO];
		checkboxSelected = 0;
	}
}
- (IBAction)checkboxButtonDay4:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButton4 setSelected:YES];
		checkboxSelected = 1;
	} else {
		[checkboxButton4 setSelected:NO];
		checkboxSelected = 0;
	}
}
- (IBAction)checkboxButtonDay5:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButton5 setSelected:YES];
		checkboxSelected = 1;
	} else {
		[checkboxButton5 setSelected:NO];
		checkboxSelected = 0;
	}
}

- (IBAction)checkboxButtonDay6:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButton6 setSelected:YES];
		checkboxSelected = 1;
	} else {
		[checkboxButton6 setSelected:NO];
		checkboxSelected = 0;
	}
}
- (IBAction)checkboxButtonDay7:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButton7 setSelected:YES];
		checkboxSelected = 1;
	} else {
		[checkboxButton7 setSelected:NO];
		checkboxSelected = 0;
	}
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)dealloc {
    
}


@end
