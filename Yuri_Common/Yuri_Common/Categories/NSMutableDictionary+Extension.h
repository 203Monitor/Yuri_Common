//
//  NSMutableDictionary+Extension.h
//
//  Created by 武国斌 on 16/1/18.
//  Copyright © 2016年 Yucapri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (Extension)

- (void)setSafeObject:(id)anObject forKey:(id < NSCopying >)aKey;

@end
