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
@synthesize ProgressBar;

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
    [self setProgressBar:nil];
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
		[checkboxButtonDay1 setSelected:YES];
		checkboxSelected = 1;
        ProgressBar.progress=ProgressBar.progress+0.1;
	} else {
		[checkboxButtonDay1 setSelected:NO];
		checkboxSelected = 0;
	}
}
- (IBAction)checkboxButtonDay2:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButtonDay2 setSelected:YES];
		checkboxSelected = 1;
        ProgressBar.progress=ProgressBar.progress+0.1;
	} else {
		[checkboxButtonDay2 setSelected:NO];
		checkboxSelected = 0;
        
	}
}
- (IBAction)checkboxButtonDay3:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButtonDay3 setSelected:YES];
		checkboxSelected = 1;
	} else {
		[checkboxButtonDay3 setSelected:NO];
		checkboxSelected = 0;
        ProgressBar.progress=ProgressBar.progress-0.1;
	}
}
- (IBAction)checkboxButtonDay4:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButtonDay4 setSelected:YES];
		checkboxSelected = 1;
        ProgressBar.progress=ProgressBar.progress+0.1;
	} else {
		[checkboxButtonDay4 setSelected:NO];
		checkboxSelected = 0;
	}
}
- (IBAction)checkboxButtonDay5:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButtonDay5 setSelected:YES];
		checkboxSelected = 1;
        ProgressBar.progress=ProgressBar.progress+0.1;
	} else {
		[checkboxButtonDay5 setSelected:NO];
		checkboxSelected = 0;
	}
}
- (IBAction)checkboxButtonDay6:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButtonDay6 setSelected:YES];
		checkboxSelected = 1;
        ProgressBar.progress=ProgressBar.progress+0.1;
	} else {
		[checkboxButtonDay6 setSelected:NO];
		checkboxSelected = 0;
	}
}
- (IBAction)checkboxButtonDay7:(id)sender{
	if (checkboxSelected == 0){
		[checkboxButtonDay7 setSelected:YES];
		checkboxSelected = 1;
        ProgressBar.progress=ProgressBar.progress+0.1;
	} else {
		[checkboxButtonDay7 setSelected:NO];
		checkboxSelected = 0;
        ProgressBar.progress=ProgressBar.progress-0.1;
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
