//
//  NSMutableDictionary+Extension.m
//
//  Created by 武国斌 on 16/1/18.
//  Copyright © 2016年 Yucapri. All rights reserved.
//

#import "NSMutableDictionary+Extension.h"

@implementation NSMutableDictionary (Extension)

- (void)setSafeObject:(id)anObject forKey:(id < NSCopying >)aKey {
    if(anObject!=nil)
        [self setObject:anObject forKey:aKey];
    else
        [self setObject:@"" forKey:aKey];
}

@end
