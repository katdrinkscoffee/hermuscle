//
//  CreateAccountScreen.m
//  HerMuscle
//
//  Created by Katarina Djordjevic on 3/5/13.
//
//

#import "CreateAccountScreen.h"

@interface CreateAccountScreen ()

@end

@implementation CreateAccountScreen

-(IBAction)ReturnKeyButton:(id)sender {
    [sender resignFirstResponder];
}




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
