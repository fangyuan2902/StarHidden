//
//  StringUtil.h
//  StarHidden
//
//  Created by yuanfang on 2018/7/23.
//  Copyright © 2018年 yuanfang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringUtil : NSObject


/*
 originalStirng 原字符串
 formIndex 开始替换位置
 */
+ (NSString *)createHiddenString:(NSString *)originalStirng formIndex:(NSInteger)formIndex;

/*
 originalStirng 原字符串
 toIndex 结束替换位置
 */
+ (NSString *)createHiddenString:(NSString *)originalStirng toIndex:(NSInteger)toIndex;

/*
 originalStirng 原字符串
 formIndex 开始替换位置
 toIndex 结束替换位置
 */
+ (NSString *)createHiddenString:(NSString *)originalStirng formIndex:(NSInteger)formIndex toIndex:(NSInteger)toIndex;

/*
 originalStirng 原字符串
 formIndex 开始替换位置
 toIndex 结束替换位置
 replaceSpace 空格是否替换
 */
+ (NSString *)createHiddenString:(NSString *)originalStirng formIndex:(NSInteger)formIndex toIndex:(NSInteger)toIndex replaceSpace:(BOOL)replaceSpace;

/*
 originalStirng 原字符串
 formIndex 开始替换位置
 toIndex 结束替换位置
 replaceCount 替换字符串长度
 */
+ (NSString *)createHiddenString:(NSString *)originalStirng formIndex:(NSInteger)formIndex toIndex:(NSInteger)toIndex replaceCount:(NSInteger)replaceCount;

@end
