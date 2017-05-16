//
//  Dependency.m
//  InjectorTest
//
//  Created by Christoph Halang on 16.05.17.
//  Copyright © 2017 Arena. All rights reserved.
//

#import "Dependency.h"
#import <Objection/Objection.h>

@implementation Dependency
objection_register_singleton(Dependency)

- (instancetype)init {
    self = [super init];
    if (self) {

    }

    return self;
}

- (NSString *)greetings {
    return @"hello";
}


@end
