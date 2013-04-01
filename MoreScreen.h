//
//  MoreScreen.h
//  HerMuscle
//
//  Created by Katarina Djordjevic on 3/5/13.
//
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUI.h>

@interface MoreScreen : UIViewController{
    SLComposeViewController *mySLComposerSheet;
}
- (IBAction)PostToFacebook:(id)sender;
- (IBAction)PostToTwitter:(id)sender;
- (IBAction)LikeOnFacebook:(id)sender;

-(IBAction)FacebookAlert:(id)sender;
-(IBAction)TwitterAlert:(id)sender;
-(IBAction)AboutAlert:(id)sender;
-(IBAction)OpenMail:(id)sender;


@end
