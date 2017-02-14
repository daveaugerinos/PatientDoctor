//
//  Rx.h
//  PatientDoctor
//
//  Created by Dave Augerinos on 2017-02-09.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@class Patient;

@interface Rx : NSObject

@property (nonatomic, strong) NSMutableDictionary *prescriptions;

-(NSMutableDictionary *)recommendPrescription:(Patient *)patient;

@end
