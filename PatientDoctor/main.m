//
//  main.m
//  PatientDoctor
//
//  Created by Dave Augerinos on 2017-02-09.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "RxHistory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create prescrition history
        RxHistory *rxHistory = [[RxHistory alloc] init];
        
        // Create patients and doctors for test
        Patient *patient1 = [[Patient alloc] initWithName:@"Dave"
                                                  andAge:26
                                           andHealthCare:54321
                                             andSymptoms:[NSMutableSet setWithObjects:@"cough", @"headache", @"fatigue", nil]];
        
        Patient *patient2 = [[Patient alloc] initWithName:@"Alice"
                                                  andAge:34
                                           andHealthCare:12345
                                             andSymptoms:[NSMutableSet setWithObjects:@"flu", nil]];
        
        Doctor *doctor1 = [[Doctor alloc] initWithName:@"Susan" andSpecialization:@"Naturopath"];
        Doctor *doctor2 = [[Doctor alloc] initWithName:@"John" andSpecialization:@"Dentist"];
       
        
        // Test patient1 and doctor1
        if([doctor1 acceptPatient:patient1]) {
            NSLog(@"Patient %@ accepted", patient1.name);
            [patient1 visitDoctor:doctor1];
        }
        
        else {
            NSLog(@"Patient not accepted");
        }
        
        if([doctor1 requestMedication:patient1]) {
            NSLog(@"Patient medication request was accepted\n");
            NSMutableDictionary *script = [doctor1 prescribeRx:patient1];
            
            NSLog(@"For symptom(s):\n");
            
            for(NSString *symtom in patient1.symptoms) {
                NSLog(@"%@\n", symtom);
            }
            
            NSLog(@"Recommended prescription(s):\n");
            for(NSString *rx in [script allKeys]) {
                NSLog(@"%@ -> %@ ", rx, [script objectForKey:rx]);
            }
            
            // Add to prescription history
            [rxHistory addPatient:patient1 withRx:script];
        }
        
        else {
            NSLog(@"Patient Rx request was not accepted");
        }
        
        // Output all patients Rx history
        NSLog(@"Prescription history for all patients:\n");
        for(NSString *name in [rxHistory.rxHistory allKeys]) {
            NSLog(@"%@ -> %@ ", name, [rxHistory.rxHistory objectForKey:name]);
        }
        
        // Test patient2 and doctor2
        if([doctor2 acceptPatient:patient2]) {
            NSLog(@"Patient %@ accepted", patient2.name);
            [patient2 visitDoctor:doctor2];
        }
        
        else {
            NSLog(@"Patient not accepted");
        }
        
        if([doctor2 requestMedication:patient2]) {
            NSLog(@"Patient medication request was accepted\n");
            NSMutableDictionary *script = [doctor2 prescribeRx:patient2];
            
            NSLog(@"For symptom(s):\n");
            
            for(NSString *symtom in patient2.symptoms) {
                NSLog(@"%@\n", symtom);
            }
            
            NSLog(@"Recommended prescription(s):\n");
            for(NSString *rx in [script allKeys]) {
                NSLog(@"%@ -> %@ ", rx, [script objectForKey:rx]);
            }
            
            // Add to prescription history
            [rxHistory addPatient:patient2 withRx:script];
        }
        
        else {
            NSLog(@"Patient Rx request was not accepted");
        }
        
        // Output all patients Rx history
        NSLog(@"Prescription history for all patients:\n");
        for(NSString *name in [rxHistory.rxHistory allKeys]) {
            NSLog(@"%@ -> %@ ", name, [rxHistory.rxHistory objectForKey:name]);
        }

        
        
    }
    return 0;
}
