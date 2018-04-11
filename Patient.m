//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Alejandro Zielinsky on 2018-04-11.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithNameAndAge:(NSString*)name withAge:(int)age
{
    self = [super init];
    if (self)
    {
        _age = age;
        _name =  name;
        _prescriptions = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(void)GetDoctorInfo:(Doctor*)doctor
{
    NSLog(@"Doctor Name : %@ Doctor Specialization : %@",doctor.name,doctor.specialization);
}

-(void)VisitDoctor:(Doctor*)doctor
{
    [doctor AcceptPatient:self];
}

-(void)RequestMedication:(Doctor*)doctor
{
    [doctor GiveMedication:self];
}

@end
