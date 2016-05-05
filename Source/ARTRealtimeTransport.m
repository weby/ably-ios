//
//  ARTRealtimeTransport.m
//  ably
//
//  Created by Toni Cárdenas on 21/4/16.
//  Copyright © 2016 Ably. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARTRealtimeTransport.h"

@implementation ARTRealtimeTransportError

- (instancetype)initWithError:(NSError *)error type:(ARTRealtimeTransportErrorType)type url:(NSURL *)url {
    self = [super init];
    if (self) {
        self.error = error;
        self.type = type;
        self.url = url;
    }
    return self;
}

- (instancetype)initWithError:(NSError *)error badResponseCode:(NSInteger)badResponseCode url:(NSURL *)url {
    self = [self initWithError:error type:ARTRealtimeTransportErrorTypeBadResponse url:url];
    if (self) {
        self.badResponseCode = badResponseCode;
    }
    return self;
}

@end