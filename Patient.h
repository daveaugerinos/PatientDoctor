//
//  Patient.h
//  PatientDoctor
//
//  Created by Dave Augerinos on 2017-02-09.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@class Doctor;

@interface Patient : NSObject

// Properties
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) int healthCard;
@property (nonatomic, strong) NSMutableSet *symptoms;

// Methods
-(instancetype)initWithName:(NSString *)patientName andAge:(int)patientAge andHealthCare:(int)healthCard andSymptoms:(NSMutableSet *)patientSymptoms;
-(void)visitDoctor:(Doctor *)doctor;

@end
