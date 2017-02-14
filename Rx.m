//
//  Rx.m
//  PatientDoctor
//
//  Created by Dave Augerinos on 2017-02-09.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "Rx.h"

@implementation Rx

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // Prescriptions dictionary Rx for symptom
        _prescriptions = [[NSMutableDictionary alloc] init];
        
        [_prescriptions setObject:@"pill 1" forKey:@"cough"];
        [_prescriptions setObject:@"pill 2" forKey:@"cold"];
        [_prescriptions setObject:@"pill 3" forKey:@"flu"];
        [_prescriptions setObject:@"pill 4" forKey:@"headache"];
        [_prescriptions setObject:@"pill 5" forKey:@"sprain"];

    }
    
    return self;
}

-(NSMutableDictionary *)recommendPrescription:(Patient *)patient {
    
    NSMutableDictionary *myPrescription = [[NSMutableDictionary alloc] init];
    
    // If patient exists...
    if(patient) {
        // Iterate through their symptoms and build a prescription
        // for each symptom found in the prescription dictionary
        for(NSString *mySymtom in patient.symptoms) {
            NSString *recommend = [_prescriptions objectForKey:mySymtom];
            if(recommend) {
                [myPrescription setObject:recommend forKey:mySymtom];
            }
        }
    }
    
    return myPrescription;
    
}

@end
