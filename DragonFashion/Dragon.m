//
//  Dragon.m
//  DragonFashion
//
//  Created by Orten, Thomas on 20.05.14.
//  Copyright (c) 2014 Orten, Thomas. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

- (Dragon *) initWithFullName:(NSString *)fullName
{
    self.fullName = fullName;
    return self;
}

- (Dragon *) initWithFullName:(NSString *)fullName signatureClothingItem:(NSString *)signatureClothingItem
{
    self.fullName = fullName;
    self.signatureClothingItem = signatureClothingItem;
    return self;
}

- (Dragon *) initWithFullName:(NSString *)fullName signatureClothingItem:(NSString *)signatureClothingItem tailLength:(NSString *)tailLength
{
    self.fullName = fullName;
    self.signatureClothingItem = signatureClothingItem;
    self.tailLength = tailLength;
    return self;
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"%@, %@, %@", self.fullName, self.signatureClothingItem, self.tailLength];
}

@end
