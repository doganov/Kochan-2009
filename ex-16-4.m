#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSProcessInfo.h>

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  NSProcessInfo *proc = [NSProcessInfo processInfo];

  NSLog (@"NSProcessInfo");
  NSLog (@"-------------");

  // Accessing Process Information
  NSLog (@"arguments: %@", [proc arguments]);
  NSLog (@"environment: %@", [proc environment]);
  NSLog (@"processIdentifier: %d", [proc processIdentifier]);
  NSLog (@"environment: %@", [proc globallyUniqueString]);

  // Getting Host Information
  NSLog (@"hostName: %@", [proc hostName]);
  NSLog (@"operatingSystem: %u", [proc operatingSystem]);
  NSLog (@"operatingSystemName: %@", [proc operatingSystemName]);
  NSLog (@"operatingSystemVersionString: %@",
         [proc operatingSystemVersionString]);

  // Getting Computer Information
  unsigned long long memory = [proc physicalMemory];
  NSLog (@"physicalMemory: %llu (~%llu MB)", memory, memory / 1024 / 1024);
  NSLog (@"processorCount: %u", [proc processorCount]);
  NSLog (@"activeProcessorCount: %u", [proc activeProcessorCount]);
  //NSLog (@"systemUptime: %f", [proc systemUptime]);
  
  [pool drain];
  return 0;
}
