//
// Created by Igor Vasilenko on 23/03/16.
// Copyright (c) 2016 Igor Vasilenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VASMarvelAPIService.h"

@class RACSignal;
@class VASSessionManagerImpl;
@protocol VASSessionManager;


@interface VASMarvelAPIServiceImpl : NSObject <VASMarvelAPIService>

@property (strong, nonatomic, readonly) id <VASSessionManager> sessionManager;

@end