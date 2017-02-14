//
//  RxHistory.h
//  PatientDoctor
//
//  Created by Dave Augerinos on 2017-02-09.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@class Patient;

@interface RxHistory : NSObject

// Properties
@property (nonatomic, strong) NSMutableDictionary *rxHistory;

// Methods
- (void)addPatient:(Patient *)patient withRx:(NSMutableDictionary *)rx;

@end
