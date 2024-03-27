//
//  CharacterModel.h
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/26/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CharacterModel : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *speech;
@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, strong) NSString *age;
@property (nonatomic, strong) NSString *info;
@property (nonatomic, strong) NSString *saying;
@property (nonatomic, strong) NSString *coinPayout;
@property (nonatomic, strong) NSString *payoutTime;

- (instancetype)initWithDictionary:(NSDictionary *)withDictionary;

@end

NS_ASSUME_NONNULL_END
