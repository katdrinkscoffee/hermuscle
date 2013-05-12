//
//  AppDelegate.h
//  HerMuscle
//
//  Created by Katarina Djordejvic on 1/9/13.
//  Copyright (c) 2013 DJ Products. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@class WelcomeScreen;
@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigationController;

@property (strong, nonatomic) WelcomeScreen* WelcomeScreen;

@property (strong, nonatomic) ViewController *mainViewController;

@property BOOL isNavigating;



@end
