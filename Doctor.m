//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Alejandro Zielinsky on 2018-04-11.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor


-(instancetype)initWithNameAndSpecialization:(NSString*)name withSpec:(NSString*)specialization
{
    self = [super init];
    if (self)
    {
        _specialization = specialization;
        _name =  name;
        
        _patients = [[NSMutableDictionary alloc] init];
        _prescriptions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)GetPatientInfo:(Patient*)patient
{
    NSLog(@"Patient Name : %@ Patient Age : %d",patient.name,patient.age);
}

-(void)AcceptPatient:(Patient*)patient
{
    NSLog(@"Do you have a health card %@ ?",patient.name);
    NSString *userInput = [InputHandler getUserInput];
    
    if([userInput isEqualToString:(@"yes")])
        {
            NSLog(@"Great you are now my patient");
            [self.patients setObject:patient forKey:patient.name];
           // self.patients[patient.name] = patient;
        }
    else if ([userInput isEqualToString:(@"no")])
        {
         NSLog(@"Sorry please leave my office");
        }
}

-(void)GiveMedication:(Patient*)patient
{
    //Check to see if patient exists as accepted patient
    if(self.patients[patient.name])
        {
            NSLog(@"What are your symptoms?(headache)(fever)(cough)");
            NSString *userInput = [InputHandler getUserInput];
            if([userInput isEqualToString:(@"headache")])
            {
                [self.prescriptions addObject:(@"Advil")];
                NSLog(@"I have prescribed you Advil");
                patient.prescriptions[patient.name] = @"Advil";
            }
            else if([userInput isEqualToString:(@"fever")])
            {
                [self.prescriptions addObject:(@"Tylenol")];
                NSLog(@"I have prescribed you Tylenol");
                patient.prescriptions[patient.name] = @"Tylenol";
            }
            else if([userInput isEqualToString:(@"cough")])
            {
                [self.prescriptions addObject:(@"Robitussin")];
                NSLog(@"I have prescribed you Robitussin ");
                patient.prescriptions[patient.name] = @"Robitussin";
            }
        }
    else
        {
          NSLog(@"Sorry you are not my patient");
        }
}

@end
