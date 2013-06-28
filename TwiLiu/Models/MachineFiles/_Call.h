// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Call.h instead.

#import <CoreData/CoreData.h>


extern const struct CallAttributes {
	__unsafe_unretained NSString *account_sid;
	__unsafe_unretained NSString *answered_by;
	__unsafe_unretained NSString *caller_name;
	__unsafe_unretained NSString *date_created;
	__unsafe_unretained NSString *date_updated;
	__unsafe_unretained NSString *direction;
	__unsafe_unretained NSString *duration;
	__unsafe_unretained NSString *end_time;
	__unsafe_unretained NSString *forwarded_from;
	__unsafe_unretained NSString *from;
	__unsafe_unretained NSString *parent_call_sid;
	__unsafe_unretained NSString *phone_number_sid;
	__unsafe_unretained NSString *price;
	__unsafe_unretained NSString *price_unit;
	__unsafe_unretained NSString *sid;
	__unsafe_unretained NSString *start_time;
	__unsafe_unretained NSString *status;
	__unsafe_unretained NSString *to;
	__unsafe_unretained NSString *uri;
} CallAttributes;

extern const struct CallRelationships {
} CallRelationships;

extern const struct CallFetchedProperties {
} CallFetchedProperties;






















@interface CallID : NSManagedObjectID {}
@end

@interface _Call : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (CallID*)objectID;




@property (nonatomic, strong) NSString* account_sid;


//- (BOOL)validateAccount_sid:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* answered_by;


//- (BOOL)validateAnswered_by:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* caller_name;


//- (BOOL)validateCaller_name:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSDate* date_created;


//- (BOOL)validateDate_created:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSDate* date_updated;


//- (BOOL)validateDate_updated:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* direction;


//- (BOOL)validateDirection:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber* duration;


@property double durationValue;
- (double)durationValue;
- (void)setDurationValue:(double)value_;

//- (BOOL)validateDuration:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSDate* end_time;


//- (BOOL)validateEnd_time:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* forwarded_from;


//- (BOOL)validateForwarded_from:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* from;


//- (BOOL)validateFrom:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* parent_call_sid;


//- (BOOL)validateParent_call_sid:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* phone_number_sid;


//- (BOOL)validatePhone_number_sid:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber* price;


@property double priceValue;
- (double)priceValue;
- (void)setPriceValue:(double)value_;

//- (BOOL)validatePrice:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* price_unit;


//- (BOOL)validatePrice_unit:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* sid;


//- (BOOL)validateSid:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSDate* start_time;


//- (BOOL)validateStart_time:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* status;


//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* to;


//- (BOOL)validateTo:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* uri;


//- (BOOL)validateUri:(id*)value_ error:(NSError**)error_;






@end

@interface _Call (CoreDataGeneratedAccessors)

@end

@interface _Call (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAccount_sid;
- (void)setPrimitiveAccount_sid:(NSString*)value;




- (NSString*)primitiveAnswered_by;
- (void)setPrimitiveAnswered_by:(NSString*)value;




- (NSString*)primitiveCaller_name;
- (void)setPrimitiveCaller_name:(NSString*)value;




- (NSDate*)primitiveDate_created;
- (void)setPrimitiveDate_created:(NSDate*)value;




- (NSDate*)primitiveDate_updated;
- (void)setPrimitiveDate_updated:(NSDate*)value;




- (NSString*)primitiveDirection;
- (void)setPrimitiveDirection:(NSString*)value;




- (NSNumber*)primitiveDuration;
- (void)setPrimitiveDuration:(NSNumber*)value;

- (double)primitiveDurationValue;
- (void)setPrimitiveDurationValue:(double)value_;




- (NSDate*)primitiveEnd_time;
- (void)setPrimitiveEnd_time:(NSDate*)value;




- (NSString*)primitiveForwarded_from;
- (void)setPrimitiveForwarded_from:(NSString*)value;




- (NSString*)primitiveFrom;
- (void)setPrimitiveFrom:(NSString*)value;




- (NSString*)primitiveParent_call_sid;
- (void)setPrimitiveParent_call_sid:(NSString*)value;




- (NSString*)primitivePhone_number_sid;
- (void)setPrimitivePhone_number_sid:(NSString*)value;




- (NSNumber*)primitivePrice;
- (void)setPrimitivePrice:(NSNumber*)value;

- (double)primitivePriceValue;
- (void)setPrimitivePriceValue:(double)value_;




- (NSString*)primitivePrice_unit;
- (void)setPrimitivePrice_unit:(NSString*)value;




- (NSString*)primitiveSid;
- (void)setPrimitiveSid:(NSString*)value;




- (NSDate*)primitiveStart_time;
- (void)setPrimitiveStart_time:(NSDate*)value;




- (NSString*)primitiveStatus;
- (void)setPrimitiveStatus:(NSString*)value;




- (NSString*)primitiveTo;
- (void)setPrimitiveTo:(NSString*)value;




- (NSString*)primitiveUri;
- (void)setPrimitiveUri:(NSString*)value;




@end
