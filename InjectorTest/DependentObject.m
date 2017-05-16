//
//  DependentObject.m
//  InjectorTest
//
//  Created by Christoph Halang on 16.05.17.
//  Copyright © 2017 Arena. All rights reserved.
//

#import "DependentObject.h"
#import <Objection/Objection.h>

@implementation DependentObject
objection_requires(@"dependency")
@synthesize dependency;

- (instancetype)init {
    self = [super init];
    if (self) {
        // Inject the dependencies using the default injector setup in AppDelegate
        [[JSObjection defaultInjector] injectDependencies:self];
    }

    return self;
}


@end
