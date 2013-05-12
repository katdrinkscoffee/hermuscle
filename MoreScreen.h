//
//  MoreScreen.h
//  HerMuscle
//
//  Created by Katarina Djordjevic on 1/9/13.
//  Copyright (c) 2013 DJ Products All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface MoreScreen : UIViewController <MFMailComposeViewControllerDelegate> 

{
    SLComposeViewController *mySLComposerSheet;
}

-(IBAction)FacebookAlert:(id)sender;
-(IBAction)TwitterAlert:(id)sender;
-(IBAction)AboutAlert:(id)sender;
-(IBAction)OpenMail;


@end

