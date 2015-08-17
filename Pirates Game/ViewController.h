//
//  ViewController.h
//  Pirates Game
//
//  Created by Coceseeds on 17/08/15.
//  Copyright (c) 2015 Coceseeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//iVars

@property (nonatomic, readwrite) CGPoint currentPoint;

@property (strong, nonatomic) NSArray *tiles;





//IBOutlets

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (strong, nonatomic) IBOutlet UILabel *healthLabel;

@property (strong, nonatomic) IBOutlet UILabel *damageLabel;

@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;

@property (strong, nonatomic) IBOutlet UILabel *armorLabel;

@property (strong, nonatomic) IBOutlet UILabel *storyLabel;

@property (strong, nonatomic) IBOutlet UIButton *actionButton;


@property (strong, nonatomic) IBOutlet UIButton *northButton;


@property (strong, nonatomic) IBOutlet UIButton *westButton;

@property (strong, nonatomic) IBOutlet UIButton *eastButton;

@property (strong, nonatomic) IBOutlet UIButton *southButton;


//IBActions


- (IBAction)actionButtonPressed:(UIButton *)sender;


- (IBAction)northButtonPressed:(UIButton *)sender;

- (IBAction)westButtonPressed:(UIButton *)sender;

- (IBAction)eastButtonPressed:(UIButton *)sender;

- (IBAction)southButtonPressed:(UIButton *)sender;



@end

