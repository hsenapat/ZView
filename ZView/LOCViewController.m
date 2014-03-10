//
//  LOCViewController.m
//  ZView
//
//  Created by HARAPRASAD SENAPATI on 09/03/13.
//  Copyright (c) 2013 HARAPRASAD SENAPATI. All rights reserved.
//

#import "LOCViewController.h"
#import "MyGradientView.h"


static BOOL click = NO;

@interface LOCViewController ()

@end

@implementation LOCViewController
@synthesize imgView;
@synthesize tb;
@synthesize dload,tap;

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    tb = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"round_menu_dwn"]];
    tb.frame = CGRectMake(0,397,320,64);
        
    imgView = [[UIImageView alloc] initWithFrame:CGRectMake(38,250.,240,174)];
   // imgView.image = [UIImage imageNamed:@"menu_back_img_new"];
    imgView.image = [UIImage imageNamed:@"menu_approve"];
    imgView.frame = CGRectMake(92,445,145,110);
    [self.imgView setUserInteractionEnabled:YES];
    
    dload = [UIButton buttonWithType:UIButtonTypeCustom];
    dload.frame = CGRectMake(imgView.bounds.origin.x+10,imgView.bounds.origin.y+10,35,35);
    dload.titleLabel.text =@"HH";
    [dload addTarget:self action:@selector(myButt:) forControlEvents:UIControlEventTouchUpInside];
    [imgView addSubview:dload];
    [imgView bringSubviewToFront:dload];
    
//    tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myButt:)];
//    [tap setNumberOfTapsRequired:1];
//    [self.imgView setUserInteractionEnabled:YES];
//    [self.imgView addGestureRecognizer:tap];

    
    
    
    
    UIButton *butt = [UIButton buttonWithType:UIButtonTypeCustom];
    butt.frame = CGRectMake(143,406,38,29);
    
    [butt addTarget:self action:@selector(buttClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:imgView];
    [self.view addSubview:tb];
    [self.view addSubview:butt];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)myButt:(id)sender
{
    NSLog(@"XXXXX");
}
-(void)buttClicked:(id)sender
{
    click = !click;
    if (sender != nil)
    {
        if (click)
        {
            [tb setImage:[UIImage imageNamed:@"round_menu_up"]];
            [self myAction:YES];
 
        }
        else
        {
            [tb setImage:[UIImage imageNamed:@"round_menu_dwn"]];
            [self myAction:NO];
        }
    }
}


-(void)myAction:(BOOL)slide
{
    CGPoint pos = (slide ? CGPointMake(0, -14) : CGPointMake(0, 14));
    NSLog(@"pos.x : %f",pos.x);
    NSLog(@"pos.y : %f", pos.y);

    NSLog(@"self.imgView.center.x : %f", self.imgView.center.x);
    NSLog(@"self.imgView.center.y : %f", self.imgView.center.y);
    if (slide)
    {
    while (self.imgView.center.y !=388.00)
      {
        [self doAnimation:pos];
      }
    }
    else
    {
        while (self.imgView.center.y !=500.00)
        {
         [self doAnimation:pos];            
        }
    }
}

-(void)doAnimation:(CGPoint)pos
{
    [UIView beginAnimations: @"animateTextField" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: 0.3f];
    
    self.imgView.center = CGPointMake(self.imgView.center.x+pos.x, self.imgView.center.y+pos.y);
    
    NSLog(@"self.imgView.center.x : %f", self.imgView.center.x);
    NSLog(@"self.imgView.center.y : %f", self.imgView.center.y);
    
    [UIView commitAnimations];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
