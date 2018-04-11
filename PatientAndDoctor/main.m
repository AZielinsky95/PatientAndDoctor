//
//  main.m
//  PatientAndDoctor
//
//  Created by Alejandro Zielinsky on 2018-04-11.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Doctor *doctor = [[Doctor alloc] initWithNameAndSpecialization:@"Dr. Steve" withSpec:@"Psychiatrist"];
        
        Patient *patient1 = [[Patient alloc] initWithNameAndAge:@"Joe" withAge:21];
        
        [patient1 VisitDoctor:doctor];
        
        [patient1 RequestMedication:doctor];
        
        
    }
    return 0;
}
