//
//  LogInView.m
//  HerMuscle
//
//  Created by Katarina Djordjevic on 1/30/13.
//
//

#import "LogInView.h"

@interface LogInView ()
@property   (weak, nonatomic)IBOutlet UITextField *ReturningEmail;
@property   (weak, nonatomic)IBOutlet UITextField *ReturningPassword;
@property  (weak, nonatomic) IBOutlet   UITextField *Email;
@property  (weak, nonatomic) IBOutlet   UITextField *Password;
@property  (weak, nonatomic) IBOutlet   UITextField *ConfirmPassword;
@property (weak, nonatomic) IBOutlet UITextField *FirstName;
@property (weak, nonatomic) IBOutlet UITextField *LastName;

@end

@implementation LogInView
@synthesize ReturningEmail, ReturningPassword, Email, Password, ConfirmPassword,FirstName, LastName;
- (IBAction)SignIn:(id)sender {
}

- (IBAction)SignUp:(id)sender {
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setObject:FirstName.text forKey:@"keyFirstName"];
    [prefs setObject:LastName.text forKey:@"keyLastName"];
    [self performSegueWithIdentifier:@"LogInToDashboard" sender:self];
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

- (void)viewDidUnload {
    [self setFirstName:nil];
    [self setLastName:nil];
    [super viewDidUnload];
}



CGFloat animatedDistance;



//These constans and methods - (void)textFieldDidBeginEditing:(UITextField *)textField,
//- (void)textFieldDidEndEditing:(UITextField *)textField and variable CGFloat animatedDistance (line 14)
//are used to avoid text field be hidde by key board. I got this code from http://www.cocoawithlove.com/2008/10/sliding-uitextfields-around-to-avoid.html

static const CGFloat KEYBOARD_ANIMATION_DURATION = 0.3;
static const CGFloat MINIMUM_SCROLL_FRACTION = 0.2;
static const CGFloat MAXIMUM_SCROLL_FRACTION = 0.8;
static const CGFloat PORTRAIT_KEYBOARD_HEIGHT = 216;
static const CGFloat LANDSCAPE_KEYBOARD_HEIGHT = 162;

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    CGRect textFieldRect =[self.view.window convertRect:textField.bounds fromView:textField];
    CGRect viewRect =[self.view.window convertRect:self.view.bounds fromView:self.view];
    CGFloat midline = textFieldRect.origin.y + 0.5 * textFieldRect.size.height;
    CGFloat numerator = midline - viewRect.origin.y - MINIMUM_SCROLL_FRACTION * viewRect.size.height;
    CGFloat denominator = (MAXIMUM_SCROLL_FRACTION - MINIMUM_SCROLL_FRACTION) * viewRect.size.height;
    CGFloat heightFraction = numerator / denominator;
    
    if (heightFraction < 0.0)
    {
        heightFraction = 0.0;
    }
    else if (heightFraction > 1.0)
    {
        heightFraction = 1.0;
    }
    
    UIInterfaceOrientation orientation =
    [[UIApplication sharedApplication] statusBarOrientation];
    if (orientation == UIInterfaceOrientationPortrait ||
        orientation == UIInterfaceOrientationPortraitUpsideDown)
    {
        animatedDistance = floor(PORTRAIT_KEYBOARD_HEIGHT * heightFraction);
    }
    else
    {
        animatedDistance = floor(LANDSCAPE_KEYBOARD_HEIGHT * heightFraction);
    }
    
    CGRect viewFrame = self.view.frame;
    viewFrame.origin.y -= animatedDistance;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:KEYBOARD_ANIMATION_DURATION];
    
    [self.view setFrame:viewFrame];
    
    [UIView commitAnimations];
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    CGRect viewFrame = self.view.frame;
    viewFrame.origin.y += animatedDistance;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:KEYBOARD_ANIMATION_DURATION];
    
    [self.view setFrame:viewFrame];
    
    [UIView commitAnimations];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    if (textField==Email) {
        [textField resignFirstResponder];
    }
    if (textField==Password) {
        [textField resignFirstResponder];
    }
    if (textField==ConfirmPassword) {
        [textField resignFirstResponder];
    }
    if (textField==FirstName) {
        [textField resignFirstResponder];
    }
    if (textField==LastName) {
        [textField resignFirstResponder];
       
    }
    return YES;
    
}
- (IBAction)signUpButton:(id)sender {
    BOOL email_was_provided = YES; //TO CONFIRM IF NAME WAS PROVIDED
    BOOL password_was_provided = YES;//TO CONFIRM IF EMAIL WAS PROVIDED
    BOOL confirmpassword_was_provided = YES;//TO CONFIRM IF COMMENT WAS PROVIDED
    BOOL firstname_was_provided = YES; //TO CONFIRM IF NAME WAS PROVIDED
    BOOL lastname_was_provided = YES;//TO CONFIRM IF EMAIL WAS PROVIDED
    
    
    //IF EMAIL WAS NOT PROVIDED THEN VARIABLE VALUE IS NO
    if ([Email.text isEqualToString:@""]) {
        email_was_provided = NO;
    }
    //IF PASSWORD WAS NOT PROVIDED THEN VARIABLE VALUE IS NO
    if ([Password.text isEqualToString:@""]) {
        password_was_provided = NO;
    }
    //IF CONFIRM PASSWORD WAS NOT PROVIDED THEN VARIABLE VALUE IS NO
    if ([ConfirmPassword.text isEqualToString:@""]) {
        confirmpassword_was_provided = NO;
    }
    //IF FIRST NAME WAS NOT PROVIDED THEN VARIABLE VALUE IS NO
    if ([FirstName.text isEqualToString:@""]) {
        firstname_was_provided = NO;
    }
    //IF LAST NAME WAS NOT PROVIDED THEN VARIABLE VALUE IS NO
    if ([LastName.text isEqualToString:@""]) {
        lastname_was_provided = NO;
    }
    
    //IF VALUE FOR ALL VARIABLES IS YES WE MOVE TO NEXT SCREEN
    if (email_was_provided && password_was_provided && confirmpassword_was_provided && firstname_was_provided && lastname_was_provided) {
        [self performSegueWithIdentifier:@"logInViewSignUpToDashboard" sender:self];
    }
    //IF VALUE FOR SOME VARIABLE IS NO, WE NEED TO VERIFY WHAT IS MISSED.
    else
    {
        
        NSString *message;//THIS VARIABLE WILL CONTAIN THE MESSAGE
        message = @"";//WE START WITH NO TEXT
        
        //IF EMAIL WAS NOT PROVIDED WE ADD THE NOTE TO message VARIABLE
        if (!email_was_provided) {
            message = [NSString stringWithFormat:@"%@%@", message, @"Email is required.\n"];
        }
        //IF PASSWORD WAS NOT PROVIDED WE ADD THE NOTE TO message VARIABLE
        if (!password_was_provided) {
            message = [NSString stringWithFormat:@"%@%@", message, @"Password is required.\n"];
        }
        //IF CONFIRM PASSWORD WAS NOT PROVIDED WE ADD THE NOTE TO message VARIABLE
        if (!confirmpassword_was_provided) {
            message = [NSString stringWithFormat:@"%@%@", message, @"Comment is required.\n"];
        }
        //IF FIRST NAME WAS NOT PROVIDED WE ADD THE NOTE TO message VARIABLE
        if (!firstname_was_provided) {
            message = [NSString stringWithFormat:@"%@%@", message, @"Name is required.\n"];
        }
        //IF LAST NAME WAS NOT PROVIDED WE ADD THE NOTE TO message VARIABLE
        if (!lastname_was_provided) {
            message = [NSString stringWithFormat:@"%@%@", message, @"Name is required.\n"];
        }
        
        //AT THE END WE DISPLAY ONE SINGLE MESSAGE WITH ALL LEGENDS.
        //PUT ATTENTATION TO message:message usually it looks like message:@"your message" in this case
        //@"your message" is equals to message variable that was populated in the previous 3 ifs
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:message
                                                       delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
}

@end