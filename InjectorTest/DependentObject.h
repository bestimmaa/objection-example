//
//  DependentObject.h
//  InjectorTest
//
//  Created by Christoph Halang on 16.05.17.
//  Copyright © 2017 Arena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dependency;
@protocol GenericDependency;

@interface DependentObject : NSObject

@property(nonatomic, strong) id<GenericDependency> dependency;

@end

