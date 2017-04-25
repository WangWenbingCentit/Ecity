//
//  SubNetWorkManager.h
//  Ecity
//
//  Created by wangwenbing on 2017/4/25.
//  Copyright © 2017年 Centit. All rights reserved.
//

#import "BaseNetWorkManager.h"
#import "Ecity-Protocol.h"

@interface SubNetWorkManager : BaseNetWorkManager

+ (id)sharedInstanceSession;
    
@end

@interface SubNetWorkManager (EcityRequest)<Ecity_Protocol>

@end
