//
//  WelcomeScreen.h
//  HerMuscle
//
//  Created by Katarina Djordjevic on 1/9/13.
//  Copyright (c) 2013 DJ Products All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface WelcomeScreen : UIViewController <FBLoginViewDelegate>

@property (unsafe_unretained, nonatomic) IBOutlet FBLoginView *FBLoginView;


@end


