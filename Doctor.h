//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Alejandro Zielinsky on 2018-04-11.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
@class Patient;

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSMutableArray *prescriptions;
@property NSMutableDictionary *patients;

-(instancetype)initWithNameAndSpecialization:(NSString*)name withSpec:(NSString*)specialization;
-(void)GetPatientInfo:(Patient*)patient;
-(void)AcceptPatient:(Patient*)patient;
-(void)GiveMedication:(Patient*)patient;

@end
