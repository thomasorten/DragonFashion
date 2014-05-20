//
//  Dragon.h
//  DragonFashion
//
//  Created by Orten, Thomas on 20.05.14.
//  Copyright (c) 2014 Orten, Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject
@property NSString *fullName;
@property NSString *signatureClothingItem;
@property NSString *tailLength;
- (Dragon *) initWithFullName:(NSString *)fullName;
- (Dragon *) initWithFullName:(NSString *)fullName signatureClothingItem:(NSString *)signatureClothingItem;
- (Dragon *) initWithFullName:(NSString *)fullName signatureClothingItem:(NSString *)signatureClothingItem tailLength:(NSString *)tailLength;
@end
