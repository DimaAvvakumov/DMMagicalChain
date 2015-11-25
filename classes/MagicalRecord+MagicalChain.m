//
//  MagicalRecord+MagicalChain.m
//
//  Created by Avvakumov Dmitry on 18.11.15.
//  Copyright © 2015 Avvakumov Dmitry. All rights reserved.
//

#import "MagicalRecord+MagicalChain.h"

@implementation MagicalRecord (MagicalChain)

+ (void) chain_saveWithBlock:(void(^)(NSManagedObjectContext *localContext))block completion:(MRSaveCompletionHandler)completion {
    static dispatch_semaphore_t semaphore;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        semaphore = dispatch_semaphore_create(1);
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
        [MagicalRecord saveWithBlock:block
                          completion:^(BOOL success, NSError *error) {
                              dispatch_semaphore_signal(semaphore);
                              if (completion){
                                  completion(success, error);
                              }
                          }];
    });
}

+ (void) chain_saveWithBlock:(void(^)(NSManagedObjectContext *localContext))block {
    [self chain_saveWithBlock:block completion:nil];
}

@end
