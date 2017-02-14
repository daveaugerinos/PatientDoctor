//
//  Patient.m
//  PatientDoctor
//
//  Created by Dave Augerinos on 2017-02-09.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)patientName andAge:(int)patientAge andHealthCare:(int)healthCard andSymptoms:(NSMutableSet *)symptoms {

    self = [super init];
    if (self) {
        // Set patient properties
        _name = patientName;
        _age = patientAge;
        _healthCard = healthCard;
        _symptoms = symptoms;
    }
    
    return self;
}

- (void)visitDoctor:(Doctor *)doctor {
    
    NSLog(@"I am visiting Dr. %@ who is a %@.", doctor.name, doctor.specialization);
    
}


@end
