//
//  CharacterModel.m
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/26/24.
//

#import "CharacterModel.h"

#define NAME_KEY @"name"
#define SPEECH_KEY @"speech"
#define JOBS_KEY @"jobs.1.questIconKey"
#define AGE_KEY @"age"
#define INFO_KEY @"info"
#define SAYING_KEY @"saying"
#define COIN_PAY_OUT_KEY @"coinPayout"
#define PAY_OUT_TIME_KEY @"payoutTime"
#define DETAIL_ICON_KEY @"jobs.1.detailIconKey"

@implementation CharacterModel


- (instancetype)initWithDictionary:(NSDictionary *)withDictionary
{
    self = [super init];
    if (self) {
        NSString *name       = [[NSString alloc] initWithString:[withDictionary valueForKeyPath:NAME_KEY]];
        NSArray *speech      = [[NSArray alloc] initWithArray:[withDictionary valueForKeyPath:SPEECH_KEY]];
        NSString *imageName  = [[NSString alloc] initWithString:[withDictionary valueForKeyPath:JOBS_KEY]];
        NSString *age        = [[NSString alloc] initWithString:[withDictionary valueForKeyPath:AGE_KEY]];
        NSString *info       = [[NSString alloc] initWithString:[withDictionary valueForKeyPath:INFO_KEY]];
        NSString *saying     = [[NSString alloc] initWithString:[withDictionary valueForKeyPath:SAYING_KEY]];
        NSString *coinPayout = [[NSString alloc] initWithString:[withDictionary valueForKeyPath:COIN_PAY_OUT_KEY]];
        NSString *payoutTime = [[NSString alloc] initWithString:[withDictionary valueForKeyPath:PAY_OUT_TIME_KEY]];
        NSString *detailIcon = [[NSString alloc] initWithString:[withDictionary valueForKeyPath:DETAIL_ICON_KEY]];
        _name       = name;
        _speech     = speech;
        _imageName  = imageName;
        _age        = age;
        _info       = info;
        _saying     = saying;
        _coinPayout = coinPayout;
        _payoutTime = payoutTime;
        _detailIcon = detailIcon;
    }
    return self;
}



- (void)dealloc
{
    [_name release];
    [_speech release];
    [_imageName release];
    [_age release];
    [_info release];
    [_saying release];
    [_coinPayout release];
    [_payoutTime release];
    [_detailIcon release];
    [super dealloc];
}

@end
