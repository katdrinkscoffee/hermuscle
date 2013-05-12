//
//  MotivationScreen.m
//  HerMuscle
//
//  Created by Katarina Djordjevic on 1/9/13.
//  Copyright (c) 2013 DJ Products All rights reserved.
//

#import "MotivationScreen.h"

@interface MotivationScreen ()

@end

@implementation MotivationScreen

-(IBAction)randomimagebutton {
    int randomimages = rand() % 26;
    switch (randomimages) {
        case 0:
            imageview.image = [UIImage imageNamed:@"Motivation1_1.jpg"];
            break;
        case 1:
            imageview.image = [UIImage imageNamed:@"Motivation1_2.jpg"];
            break;
        case 2:
            imageview.image = [UIImage imageNamed:@"Motivation1_3.jpg"];
            break;
        case 3:
            imageview.image = [UIImage imageNamed:@"Motivation2_1.jpg"];
            break;
        case 4:
            imageview.image = [UIImage imageNamed:@"Motivation2_2.jpg"];
            break;
        case 5:
            imageview.image = [UIImage imageNamed:@"Motivation2_3.jpg.jpg"];
            break;
        case 6:
            imageview.image = [UIImage imageNamed:@"Motivation2_4.jpg.jpg"];
            break;
        case 7:
            imageview.image = [UIImage imageNamed:@"Motivation2_5.jpg"];
            break;
        case 8:
            imageview.image = [UIImage imageNamed:@"Motivation3_1.jpg"];
            break;
        case 9:
            imageview.image = [UIImage imageNamed:@"Motivation3_2.jpg"];
            break;
        case 10:
            imageview.image = [UIImage imageNamed:@"Motivation3_3.jpg.jpg"];
            break;
        case 11:
            imageview.image = [UIImage imageNamed:@"Motivation3_4.jpg.jpg"];
            break;
        case 12:
            imageview.image = [UIImage imageNamed:@"Motivation4_1.jpg"];
            break;
        case 13:
            imageview.image = [UIImage imageNamed:@"Motivation4_2.jpg"];
            break;
        case 14:
            imageview.image = [UIImage imageNamed:@"Motivation4_3.jpg"];
            break;
        case 15:
            imageview.image = [UIImage imageNamed:@"Motivation4_4.jpg"];
            break;
        case 16:
            imageview.image = [UIImage imageNamed:@"Motivation5_1.jpg"];
            break;
        case 17:
            imageview.image = [UIImage imageNamed:@"Motivation5_2.jpg"];
            break;
        case 18:
            imageview.image = [UIImage imageNamed:@"Motivation5_3.jpg"];
            break;
        case 19:
            imageview.image = [UIImage imageNamed:@"Motivation5_4.jpg.jpg"];
            break;
        case 20:
            imageview.image = [UIImage imageNamed:@"Motivation6_1.png"];
            break;
        case 21:
            imageview.image = [UIImage imageNamed:@"Motivation6_2.png"];
            break;
        case 22:
            imageview.image = [UIImage imageNamed:@"Motivation6_3.png"];
            break;
        case 23:
            imageview.image = [UIImage imageNamed:@"Motivation6_4.png"];
            break;
        case 24:
            imageview.image = [UIImage imageNamed:@"Motivation6_5.png"];
            break;
        case 25:
            imageview.image = [UIImage imageNamed:@"Motivation6_6.png"];
            break;
        default:
            break;
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
