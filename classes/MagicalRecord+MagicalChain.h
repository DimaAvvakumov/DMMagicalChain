//
//  MagicalRecord+MagicalChain.h
//
//  Created by Avvakumov Dmitry on 18.11.15.
//  Copyright © 2015 Avvakumov Dmitry. All rights reserved.
//

#import <MagicalRecord/MagicalRecord.h>

@interface MagicalRecord (MagicalChain)

+ (void) chain_saveWithBlock:(void(^)(NSManagedObjectContext *localContext))block completion:(MRSaveCompletionHandler)completion;
+ (void) chain_saveWithBlock:(void(^)(NSManagedObjectContext *localContext))block;
+ (void) chain_saveWithBlockAndWait:(void (^)(NSManagedObjectContext *))block;
    
@end
