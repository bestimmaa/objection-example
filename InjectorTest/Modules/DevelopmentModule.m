//
// Created by Christoph Halang on 16.05.17.
// Copyright (c) 2017 Arena. All rights reserved.
//

#import "DevelopmentModule.h"
#import "Dependency.h"
#import "AnotherDependency.h"


@implementation DevelopmentModule {

}

- (void)configure {
    [self bindClass:[AnotherDependency class] toProtocol:@protocol(GenericDependency)];
}

@end