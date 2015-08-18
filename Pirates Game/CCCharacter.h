//
//  CCCharacter.h
//  Pirates Game
//
//  Created by Coceseeds on 18/08/15.
//  Copyright (c) 2015 Coceseeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCArmor.h"
#import "CCWeapon.h"

@interface CCCharacter : NSObject

@property (nonatomic) int damage;
@property (nonatomic) int health;

@property (strong, nonatomic) CCArmor *armor;
@property (strong, nonatomic) CCWeapon *weapon;

@end
