//
//  Doctor.h
//  PatientDoctor
//
//  Created by Dave Augerinos on 2017-02-09.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Rx.h"

@class Patient;

@interface Doctor : NSObject

// Properties
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *acceptedPatients;

// Methods
-(instancetype)initWithName:(NSString *)doctorName andSpecialization:(NSString *)doctorSpecialty;
-(BOOL)acceptPatient:(Patient *)patient;
-(BOOL)requestMedication:(Patient *)patient;
-(NSMutableDictionary *)prescribeRx:(Patient *)patient;

@end
