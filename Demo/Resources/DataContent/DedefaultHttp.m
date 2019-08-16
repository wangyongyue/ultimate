//
//  DedefaultHttp.m
//  hbtong
//
//  Created by apple on 2019/8/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "DedefaultHttp.h"

@implementation DedefaultHttp
- (NSString *)getUrl{
    return @"/anchor";
}
- (NSDictionary *)getBody{
    NSMutableDictionary *paras = [NSMutableDictionary dictionary];
    paras[@"userId"] = [UserMsg getInstance].userModel.userId;
    paras[@"token"] = [UserMsg getInstance].userModel.token;
    
    return paras;
}


@end
