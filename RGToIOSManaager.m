//
//  RGToIOSManaager.m
//  Unity-iPhone
//
//  Created by xiaochuan on 14-5-19.
//
//

#import "RGToIOSManaager.h"
#import "ToiOS.h"



@implementation RGToIOSManaager
static RGToIOSManaager *_manager;
+ (RGToIOSManaager *)sharedManager{
    if (!_manager) {
        _manager = [[RGToIOSManaager alloc] init];
    }
    return _manager;
}


- (id)init{
    if (self = [super init]) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receive:) name:RG_TO_IOS_KEY object:nil];
        
    }
    return self;
}

- (void)receive:(NSNotification *)noti{
    NSDictionary *dic = noti.object;
    /**
     {
        key:    @"key",
        value:  @"value"
     }
     */
}




- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:RG_TO_IOS_KEY];

    [super dealloc];
}
@end
