//
//  Programme.m
//  Get_iPlayer GUI
//
//  Created by Thomas Willson on 7/13/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "Programme.h"
extern BOOL runDownloads;


@implementation Programme
- (id)initWithInfo:(id)sender pid:(NSString *)PID programmeName:(NSString *)SHOWNAME network:(NSString *)TVNETWORK
{
	[super init];
	pid = [[NSString alloc] initWithString:PID];
	showName = [[NSString alloc] initWithString:SHOWNAME];
	tvNetwork = [[NSString alloc] initWithString:TVNETWORK];
	status = [[NSString alloc] init];
	complete = [[NSNumber alloc] initWithBool:NO];
	successful = [[NSNumber alloc] initWithBool:NO];
	path = [[NSString alloc] initWithString:@"Unknown"];
	seriesName = [[NSString alloc] init];
	episodeName = [[NSString alloc] init];
	timeadded = [[NSNumber alloc] init];
	processedPID = [[NSNumber alloc] initWithBool:YES];
	radio = [[NSNumber alloc] initWithBool:NO];
	subtitlePath=[[NSString alloc] init];
	realPID=[[NSString alloc] init];
    reasonForFailure=[[NSString alloc] init];
    availableModes=[[NSString alloc] init];
    description=[[NSString alloc] init];
	return self;
}
- (id)initWithShow:(Programme *)show
{
	pid = [[NSString alloc] initWithString:[show pid]];
	showName = [[NSString alloc] initWithString:[show showName]];
	tvNetwork = [[NSString alloc] initWithString:[show tvNetwork]];
	status = [[NSString alloc] initWithString:[show status]];
	complete = [[NSNumber alloc] initWithBool:NO];
	successful = [[NSNumber alloc] initWithBool:NO];
	path = [[NSString alloc] initWithString:[show path]];
	seriesName = [[NSString alloc] init];
	episodeName = [[NSString alloc] init];
	timeadded = [[NSNumber alloc] init];
	processedPID = [[NSNumber alloc] initWithBool:YES];
	radio = [show radio];
	realPID = [show realPID];
	subtitlePath = [show subtitlePath];
    reasonForFailure=[show reasonForFailure];
    availableModes=[[NSString alloc] init];
    description=[[NSString alloc] init];
	return self;
}
- (id)init
{
	pid = [[NSString alloc] init];
	showName = [[NSString alloc] init];
	tvNetwork = [[NSString alloc] init];
	if (runDownloads)
	{
		status = @"Waiting...";
	}
	else
	{
		status = [[NSString alloc] init];
	}
	seriesName = [[NSString alloc] init];
	episodeName = [[NSString alloc] init];
	complete = [[NSNumber alloc] initWithBool:NO];
	successful = [[NSNumber alloc] initWithBool:NO];
	timeadded = [[NSNumber alloc] init];
	path = [[NSString alloc] initWithString:@"Unknown"];
	processedPID = [[NSNumber alloc] initWithBool:NO];
	radio = [[NSNumber alloc] initWithBool:NO];
    url = [[NSString alloc] init];
	realPID=[[NSString alloc] init];
	subtitlePath=[[NSString alloc] init];
    reasonForFailure=[[NSString alloc] init];
    availableModes=[[NSString alloc] init];
    description=[[NSString alloc] init];
	return self;
}
- (id)description
{
	return [NSString stringWithFormat:@"%@: %@",pid,showName];
}
- (void) encodeWithCoder: (NSCoder *)coder
{
	[coder encodeObject: showName forKey:@"showName"];
	[coder encodeObject: pid     forKey:@"pid"];
	[coder encodeObject:tvNetwork forKey:@"tvNetwork"];
	[coder encodeObject:status forKey:@"status"];
	[coder encodeObject:path forKey:@"path"];
	[coder encodeObject:seriesName forKey:@"seriesName"];
	[coder encodeObject:episodeName forKey:@"episodeName"];
	[coder encodeObject:timeadded forKey:@"timeadded"];
	[coder encodeObject:processedPID forKey:@"processedPID"];
	[coder encodeObject:radio forKey:@"radio"];
	[coder encodeObject:realPID forKey:@"realPID"];
    [coder encodeObject:url forKey:@"url"];
}
- (id) initWithCoder: (NSCoder *)coder
{
	[super init];
	pid = [[NSString alloc] initWithString:[coder decodeObjectForKey:@"pid"]];
	showName = [[NSString alloc] initWithString:[coder decodeObjectForKey:@"showName"]];
	tvNetwork = [[NSString alloc] initWithString:[coder decodeObjectForKey:@"tvNetwork"]];
	status = [[NSString alloc] initWithString:@""];
	complete = [[NSNumber alloc] initWithBool:NO];
	successful = [[NSNumber alloc] initWithBool:NO];
	path = [[NSString alloc] initWithString:[coder decodeObjectForKey:@"path"]];
	seriesName = [[NSString alloc] initWithString:[coder decodeObjectForKey:@"seriesName"]];
	episodeName = [[NSString alloc] initWithString:[coder decodeObjectForKey:@"episodeName"]];
	timeadded = [[coder decodeObjectForKey:@"timeadded"] retain];
	processedPID = [[coder decodeObjectForKey:@"processedPID"] retain];
	radio = [[coder decodeObjectForKey:@"radio"] retain];
	realPID = [[coder decodeObjectForKey:@"realPID"] retain];
    url = [[coder decodeObjectForKey:@"url"] retain];
	subtitlePath=[[NSString alloc] init];
    reasonForFailure=[[NSString alloc] init];
    availableModes=[[NSString alloc] init];
    description=[[NSString alloc] init];
	return self;
}
/*
- (id)pasteboardPropertyListForType:(NSString *)type
{
	if ([type isEqualToString:@"com.thomaswillson.programme"])
	{
		return [NSKeyedArchiver archivedDataWithRootObject:self];
	}
}
- (NSArray *)writableTypesForPasteboard:(NSPasteboard *)pasteboard
{
	return [NSArray arrayWithObject:@"com.thomaswillson.programme"];
}
 */
@synthesize showName;
@synthesize pid;
@synthesize tvNetwork;
@synthesize status;
@synthesize complete;
@synthesize successful;
@synthesize path;
@synthesize seriesName;
@synthesize episodeName;
@synthesize season;
@synthesize episode;
@synthesize timeadded;
@synthesize processedPID;
@synthesize radio;
@synthesize realPID;
@synthesize subtitlePath;
@synthesize reasonForFailure;
@synthesize availableModes;
@synthesize url;
@synthesize dateAired;
@synthesize description;
@end
