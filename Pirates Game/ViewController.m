//
//  ViewController.m
//  Pirates Game
//
//  Created by Coceseeds on 17/08/15.
//  Copyright (c) 2015 Coceseeds. All rights reserved.
//

#import "ViewController.h"
#import "CCFactory.h"
#import "CCTile.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CCFactory *factory = [[CCFactory alloc] init];
    self.tiles = [factory tiles];
    self.currentPoint = CGPointMake(0,0);
    [self updateTile];
    
}

-(void)updateTile

{
    
    CCTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    
    self.storyLabel.text = tileModel.story;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
}

- (IBAction)northButtonPressed:(UIButton *)sender {
}

- (IBAction)westButtonPressed:(UIButton *)sender {
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
}

- (IBAction)southButtonPressed:(UIButton *)sender {
}
@end
