// OCMockito by Jon Reid, https://qualitycoding.org
// Copyright 2022 Jonathan M. Reid. https://github.com/jonreid/OCMockito/blob/main/LICENSE.txt
// SPDX-License-Identifier: MIT

#import "MKTLongReturnSetter.h"


@implementation MKTLongReturnSetter

- (instancetype)initWithSuccessor:(nullable MKTReturnValueSetter *)successor
{
    self = [super initWithType:@encode(long) successor:successor];
    return self;
}

- (void)setReturnValue:(id)returnValue onInvocation:(NSInvocation *)invocation
{
    long value = [returnValue longValue];
    [invocation setReturnValue:&value];
}

@end
