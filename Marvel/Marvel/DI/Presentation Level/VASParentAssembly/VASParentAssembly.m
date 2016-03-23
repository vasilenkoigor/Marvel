//
// Created by Igor Vasilenko on 23/03/16.
// Copyright (c) 2016 Igor Vasilenko. All rights reserved.
//

#import "VASParentAssembly.h"
#import "VASRouter.h"
#import "VASStoryboardAssembly.h"

@interface VASParentAssembly ()

@property (strong, nonatomic, readwrite) VASStoryboardAssembly *storyboardAssembly;

@end

@implementation VASParentAssembly

- (VASRouter *)router
{
    return [TyphoonDefinition withClass:[VASRouter class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(storyboard) with:[self.storyboardAssembly mainStoryboard]];
        [definition useInitializer:@selector(initWithNavigationController:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[[UINavigationController alloc] init]];
        }];
    }];
}

@end