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
    [self updateButtons];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
    
    
}

- (IBAction)northButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y +1);
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x -1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
    

    
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x +1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
    

}

- (IBAction)southButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y -1);
    [self updateButtons];
    [self updateTile];
    

}

-(void)updateTile

{
    
    CCTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    
    self.storyLabel.text = tileModel.story;
    
}

-(void)updateButtons

{
    
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
    
}

-(BOOL)tileExistsAtPoint:(CGPoint)point

{
    if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]){
        
        return NO;
}
    
    
    else {
        
        return YES;
    }
    
}

    

@end
