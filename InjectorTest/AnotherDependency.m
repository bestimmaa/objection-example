//
//  AnotherDependency.m
//  InjectorTest
//
//  Created by Christoph Halang on 17.05.17.
//  Copyright © 2017 Arena. All rights reserved.
//

#import "AnotherDependency.h"
#import <Objection/Objection.h>

@interface AnotherDependency ()
@property(nonatomic, strong) id parameter;
@end

@implementation AnotherDependency
objection_register(AnotherDependency)
objection_initializer(initWithParameter:, @"Good morning sir!")

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (instancetype)initWithParameter:(NSString*)parameter{
    self = [super init];
    if (self) {
        self.parameter = parameter;
    }

    return self;
}

- (NSString *)greetings {
    return self.parameter;
}

@end
