// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Call.m instead.

#import "_Call.h"

const struct CallAttributes CallAttributes = {
	.account_sid = @"account_sid",
	.answered_by = @"answered_by",
	.caller_name = @"caller_name",
	.date_created = @"date_created",
	.date_updated = @"date_updated",
	.direction = @"direction",
	.duration = @"duration",
	.end_time = @"end_time",
	.forwarded_from = @"forwarded_from",
	.from = @"from",
	.parent_call_sid = @"parent_call_sid",
	.phone_number_sid = @"phone_number_sid",
	.price = @"price",
	.price_unit = @"price_unit",
	.sid = @"sid",
	.start_time = @"start_time",
	.status = @"status",
	.to = @"to",
	.uri = @"uri",
};

const struct CallRelationships CallRelationships = {
};

const struct CallFetchedProperties CallFetchedProperties = {
};

@implementation CallID
@end

@implementation _Call

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Call" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Call";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Call" inManagedObjectContext:moc_];
}

- (CallID*)objectID {
	return (CallID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"durationValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"duration"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}
	if ([key isEqualToString:@"priceValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"price"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic account_sid;






@dynamic answered_by;






@dynamic caller_name;






@dynamic date_created;






@dynamic date_updated;






@dynamic direction;






@dynamic duration;



- (double)durationValue {
	NSNumber *result = [self duration];
	return [result doubleValue];
}

- (void)setDurationValue:(double)value_ {
	[self setDuration:[NSNumber numberWithDouble:value_]];
}

- (double)primitiveDurationValue {
	NSNumber *result = [self primitiveDuration];
	return [result doubleValue];
}

- (void)setPrimitiveDurationValue:(double)value_ {
	[self setPrimitiveDuration:[NSNumber numberWithDouble:value_]];
}





@dynamic end_time;






@dynamic forwarded_from;






@dynamic from;






@dynamic parent_call_sid;






@dynamic phone_number_sid;






@dynamic price;



- (double)priceValue {
	NSNumber *result = [self price];
	return [result doubleValue];
}

- (void)setPriceValue:(double)value_ {
	[self setPrice:[NSNumber numberWithDouble:value_]];
}

- (double)primitivePriceValue {
	NSNumber *result = [self primitivePrice];
	return [result doubleValue];
}

- (void)setPrimitivePriceValue:(double)value_ {
	[self setPrimitivePrice:[NSNumber numberWithDouble:value_]];
}





@dynamic price_unit;






@dynamic sid;






@dynamic start_time;






@dynamic status;






@dynamic to;






@dynamic uri;











@end
