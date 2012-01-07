// Some basic file handle operations
// Assumes the existence of a file called "testfile"
// in the current working directory

#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSFileHandle.h>
#import <Foundation/NSFileManager.h>

#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSData.h>

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

  // Create the output file first if necessary

  [[NSFileManager defaultManager] createFileAtPath: @"testout"
                                          contents: nil
                                        attributes: nil];

  // Now open outfile for writing

  outFile = [NSFileHandle fileHandleForWritingAtPath: @"testout"];

  if (outFile == nil) {
    NSLog (@"Open of testout for writing failed");
    return 2;    
  }

  // Truncate the output file since it may contain data

  [outFile truncateFileAtOffset: 0];

  // Read the data from inFile and write it to outFile

  buffer = [inFile readDataToEndOfFile];

  [outFile writeData: buffer];

  // Close the two files

  [inFile closeFile];
  [outFile closeFile];

  // Verify the file's contents

  NSLog (@"%@", [NSString stringWithContentsOfFile: @"testout"
                                          encoding: NSUTF8StringEncoding
                                             error: NULL]);
  [pool drain];
  return 0;
}
