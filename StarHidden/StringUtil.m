//
//  StringUtil.m
//  StarHidden
//
//  Created by yuanfang on 2018/7/23.
//  Copyright © 2018年 yuanfang. All rights reserved.
//

#import "StringUtil.h"

@implementation StringUtil

+ (NSString *)createHiddenString:(NSString *)originalStirng formIndex:(NSInteger)formIndex {
    return [self createHiddenString:originalStirng formIndex:formIndex toIndex:originalStirng.length isAllReplace:YES replaceSpace:YES replaceCount:0];
}

+ (NSString *)createHiddenString:(NSString *)originalStirng toIndex:(NSInteger)toIndex {
    return [self createHiddenString:originalStirng formIndex:0 toIndex:toIndex isAllReplace:YES replaceSpace:YES replaceCount:0];
}

+ (NSString *)createHiddenString:(NSString *)originalStirng formIndex:(NSInteger)formIndex toIndex:(NSInteger)toIndex {
    return [self createHiddenString:originalStirng formIndex:formIndex toIndex:toIndex isAllReplace:YES replaceSpace:YES replaceCount:0];
}

+ (NSString *)createHiddenString:(NSString *)originalStirng formIndex:(NSInteger)formIndex toIndex:(NSInteger)toIndex replaceSpace:(BOOL)replaceSpace {
    return [self createHiddenString:originalStirng formIndex:formIndex toIndex:toIndex isAllReplace:YES replaceSpace:replaceSpace replaceCount:0];
}

+ (NSString *)createHiddenString:(NSString *)originalStirng formIndex:(NSInteger)formIndex toIndex:(NSInteger)toIndex replaceCount:(NSInteger)replaceCount {
    return [self createHiddenString:originalStirng formIndex:formIndex toIndex:toIndex isAllReplace:NO replaceSpace:YES replaceCount:replaceCount];
}

+ (NSString *)createHiddenString:(NSString *)originalStirng formIndex:(NSInteger)formIndex toIndex:(NSInteger)toIndex isAllReplace:(BOOL)isAllReplace replaceSpace:(BOOL)replaceSpace replaceCount:(NSInteger)replaceCount {
    NSString *returnString = @"";
    NSString *currentString = @"";
    NSString *replaceString = @"";
    NSInteger length = originalStirng.length;
    NSRange currentRang = NSMakeRange(0, length);
    if (formIndex < 0 || toIndex > length || toIndex < 0 || formIndex >= length || formIndex >= toIndex) {
        return originalStirng;
    } else {
        currentRang = NSMakeRange(formIndex, toIndex - formIndex);
        currentString = [originalStirng substringWithRange:currentRang];
        
        if (isAllReplace == YES) {
            replaceString = [self replaceStringFrom:currentString replaceSpace:replaceSpace];
        } else {
            for (int i = 0; i < replaceCount; i++) {
                replaceString = [replaceString stringByAppendingString:@"*"];
            }
        }
    }
    
    returnString = [originalStirng stringByReplacingCharactersInRange:currentRang withString:replaceString];
    
    return returnString;
}

+ (NSString *)replaceStringFrom:(NSString *)currentString replaceSpace:(BOOL)replaceSpace {
    NSString *replaceString = @"";
    NSRange range;
    for (int i = 0; i < currentString.length ; i += range.length ) {
        //一些字符如😊😢等在字符串中时则不适用
        //unichar chara = [currentString characterAtIndex:i];
        range = [currentString rangeOfComposedCharacterSequenceAtIndex:i];
        NSString *subStr = [currentString substringWithRange:range];
        if ([subStr containsString:@" "] && replaceSpace == NO) {
            replaceString= [replaceString stringByAppendingString:@" "];
        } else {
            replaceString = [replaceString stringByAppendingString:@"*"];
        }
    }
    return replaceString;
}

@end
