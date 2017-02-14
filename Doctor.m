//
//  Doctor.m
//  PatientDoctor
//
//  Created by Dave Augerinos on 2017-02-09.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(instancetype)initWithName:(NSString *)doctorName andSpecialization:(NSString *)doctorSpecialty {
    
    self = [super init];
    if (self) {
        // Set doctor properties
        _name = doctorName;
        _specialization = doctorSpecialty;
        _acceptedPatients = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(BOOL)acceptPatient:(Patient *)patient {
    
    BOOL isAccepted;
    
    // Check for valid health card before adding patient
    if(patient.healthCard) {
        [self.acceptedPatients addObject:patient];
        isAccepted = YES;
    }
    
    return isAccepted;
}

-(BOOL)requestMedication:(Patient *)patient {
    
    BOOL giveRx = NO;
    
    // Check for valid health card before accepting request
    for(Patient *myPatient in self.acceptedPatients) {
        if([myPatient isEqual:patient]) {
           NSLog(@"Patient is an accepted patient.\n");
           giveRx = YES;
        }
    }
    
    return giveRx;
}

-(NSMutableDictionary *)prescribeRx:(Patient *)patient {

    NSMutableDictionary *myPrescrition;
    Rx *myRx = [[Rx alloc] init];
    
    // If patient exists and has symptoms...
    if(patient.symptoms) {
        myPrescrition = [myRx recommendPrescription:patient];
    }
    
    return myPrescrition;
}

@end
