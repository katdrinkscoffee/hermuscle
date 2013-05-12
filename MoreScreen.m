//
//  MoreScreen.m
//  HerMuscle
//
//  Created by Katarina Djordjevic on 1/9/13.
//  Copyright (c) 2013 DJ Products All rights reserved.
//

#import "MoreScreen.h"

@interface MoreScreen ()

<MFMailComposeViewControllerDelegate>

@end

@implementation MoreScreen

-(IBAction)FacebookAlert:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:nil
                          message:nil
                          delegate:self
                          cancelButtonTitle:@"Cancel"
                          otherButtonTitles:@"Post to Facebook",@"Like us on Facebook", nil];
    [alert show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        mySLComposerSheet = [[SLComposeViewController alloc] init];
        mySLComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [mySLComposerSheet setInitialText:@"Place Text Here"];
        [self presentViewController:mySLComposerSheet animated:YES completion:nil];    }
    if (buttonIndex == 2) {
        [[UIApplication sharedApplication]
         openURL:[NSURL URLWithString:@"http://www.facebook.com/hermuscle"]];
    }
    
}
-(IBAction)TwitterAlert:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:nil
                          message:nil
                          delegate:self
                          cancelButtonTitle:@"Cancel"
                          otherButtonTitles:@"Post to Twitter",@"Follow us on Twitter", nil];
    [alert show];
}

-(void)alertView2:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        mySLComposerSheet = [[SLComposeViewController alloc] init];
        mySLComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [mySLComposerSheet setInitialText:@"I love @HerMuscle"];
        [self presentViewController:mySLComposerSheet animated:YES completion:nil];    }
    if (buttonIndex == 2) {
        [[UIApplication sharedApplication]
         openURL:[NSURL URLWithString:@"http://www.twitter.com/hermuscle"]];
    }
}

-(IBAction)AboutAlert:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"About HerMuscle" message:@"Her Muscle is an interractive app designed for women, by women. It will allow you to target areas for muscle improvement and allows you to keep track of your success. Please share your experience with us and your friends and of course, enjoy the experience and your new body!"
                          delegate:self
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil];
                                             
                          
    
    [alert show];
}

- (IBAction)OpenMail {
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
    [composer setMailComposeDelegate:self];
    if ([MFMailComposeViewController canSendMail]) {
        [composer setToRecipients:[NSArray arrayWithObjects:@"hermuscle.app@gmail.com", nil]];
        [composer setSubject:@"Suggestion from fan!"];
        [composer setMessageBody:@"message here" isHTML:NO];
        [composer setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
        [self presentModalViewController:composer animated:YES];
    }
}
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    if (error) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error"
                                                        message:[NSString stringWithFormat:@"error %@", [error description]]
                                                       delegate:nil cancelButtonTitle:@"dismiss" otherButtonTitles:nil, nil];
        [alert show];
        [self dismissModalViewControllerAnimated:YES];
    }
    else {
        [self dismissModalViewControllerAnimated:YES];
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