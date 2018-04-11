//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Alejandro Zielinsky on 2018-04-11.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property int age;
@property NSString *name;
@property NSMutableDictionary *prescriptions;

-(instancetype)initWithNameAndAge:(NSString*)name withAge:(int)age;

-(void)GetDoctorInfo:(Doctor*)doctor;

-(void)VisitDoctor:(Doctor*)doctor;

-(void)RequestMedication:(Doctor*)doctor;

@end
