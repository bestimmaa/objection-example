//
//  AnotherDependency.h
//  InjectorTest
//
//  Created by Christoph Halang on 17.05.17.
//  Copyright © 2017 Arena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GenericDependency.h"

@interface AnotherDependency : NSObject<GenericDependency>
- (instancetype)initWithParameter:(NSString *)parameter;
@end
