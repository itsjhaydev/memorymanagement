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

@implementation CharacterModel


- (instancetype)initWithDictionary:(NSDictionary *)withDictionary
{
    self = [super init];
    if (self) {
        _name = [withDictionary valueForKeyPath:NAME_KEY];
        _speech = [withDictionary valueForKeyPath:SPEECH_KEY];
        _imageName = [withDictionary valueForKeyPath:JOBS_KEY];
        _age = [withDictionary valueForKeyPath:AGE_KEY];
        _info = [withDictionary valueForKeyPath:INFO_KEY];
        _saying = [withDictionary valueForKeyPath:SAYING_KEY];
        _coinPayout = [withDictionary valueForKeyPath:COIN_PAY_OUT_KEY];
        _payoutTime = [withDictionary valueForKeyPath:PAY_OUT_TIME_KEY];
    }
    return self;
}





@end
