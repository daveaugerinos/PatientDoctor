//
//  RxHistory.m
//  PatientDoctor
//
//  Created by Dave Augerinos on 2017-02-09.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "RxHistory.h"

@implementation RxHistory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rxHistory = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)addPatient:(Patient *)patient withRx:(NSMutableDictionary *)rx {

    if(patient) {
        [_rxHistory setObject:rx forKey:patient.name];
    }
}

@end
