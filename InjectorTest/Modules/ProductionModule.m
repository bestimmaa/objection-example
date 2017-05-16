//
// Created by Christoph Halang on 18.05.17.
// Copyright (c) 2017 Arena. All rights reserved.
//

#import "ProductionModule.h"
#import "GenericDependency.h"
#import "AnotherDependency.h"


@implementation ProductionModule {

}

- (void)configure {
   [self bindClass:[AnotherDependency class] toProtocol:@protocol(GenericDependency)];

    [self bindBlock:^id(JSObjectionInjector *context) {
        return [[AnotherDependency alloc] initWithParameter:@"Hi there!"];
    } toClass:[AnotherDependency class]];
}
@end