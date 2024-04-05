//
//  CharacterModel.h
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/26/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CharacterModel : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSArray *speech;
@property (nonatomic, retain) NSString *imageName;
@property (nonatomic, retain) NSString *detailIcon;
@property (nonatomic, retain) NSString *age;
@property (nonatomic, retain) NSString *info;
@property (nonatomic, retain) NSString *saying;
@property (nonatomic, retain) NSString *coinPayout;
@property (nonatomic, retain) NSString *payoutTime;

- (instancetype)initWithDictionary:(NSDictionary *)withDictionary;

@end

NS_ASSUME_NONNULL_END
