//
//  NSString+Yuri.h
//  Yuri_Common
//
//  Created by 武国斌 on 16/6/17.
//  Copyright © 2016年 武国斌. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Yuri)

- (NSString *)md2String;

- (NSString *)md4String;

- (NSString *)md5String;

- (NSString *)sha1String;

- (NSString *)sha224String;

- (NSString *)sha256String;

- (NSString *)sha384String;

- (NSString *)sha512String;

- (NSString *)crc32String;

- (NSString *)hmacMD5StringWithKey:(NSString *)key;

- (NSString *)hmacSHA1StringWithKey:(NSString *)key;

- (NSString *)hmacSHA224StringWithKey:(NSString *)key;

- (NSString *)hmacSHA256StringWithKey:(NSString *)key;

- (NSString *)hmacSHA384StringWithKey:(NSString *)key;

- (NSString *)hmacSHA512StringWithKey:(NSString *)key;

- (NSString *)base64EncodedString;

- (NSData *)dataValue;

- (id)jsonValueDecoded;

+ (NSString *)stringWithBase64EncodedString:(NSString *)base64EncodedString ;

+ (NSString *)stringWithUUID;

@end
