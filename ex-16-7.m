#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSFileHandle.h>
#import <Foundation/NSFileManager.h>

#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSData.h>

#define kBufSize 128

int main(int argc, char *argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  NSFileHandle *inFile, *outFile;
  NSData *buffer;

  // Open the file testfile for reading

  inFile = [NSFileHandle fileHandleForReadingAtPath: @"testfile"];

  if (inFile == nil) {
    NSLog (@"Open of testfile for reading failed");
    return 1;
  }

  // Now open outfile for writing

  outFile = [NSFileHandle fileHandleWithStandardOutput];

  if (outFile == nil) {
    NSLog (@"Open of standard output failed");
    return 2;
  }

  // Read the data from inFile and write it to outFile

  while ([(buffer = [inFile readDataOfLength: kBufSize]) length] > 0)
    [outFile writeData: buffer];

  // Close the two files

  [inFile closeFile];
  [outFile closeFile];

  [pool drain];
  return 0;
}
