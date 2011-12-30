#import "Music.h"

void displaySearch(id target, NSString *query)
{
  NSLog (@"Searching for '%@'...", query);
  NSArray *result = [target search: query];
  
  if ([result count] == 0)
    NSLog (@"No entries found.");
  else {
    NSLog (@"%i entry(es) found.", [result count]);
    int i = 0;
    for (id item in result)
      NSLog (@"%i. %@", ++i, item);
  }
}

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  // Initialize some songs
  Song *s1 = [[Song alloc]
               initWithTitle: @"Speed King"
                      artist: @"Deep Purple"
                       album: @"In Rock"
                     minutes: 5
                     seconds: 52];
  Song *s2 = [[Song alloc]
               initWithTitle: @"Bloodsucker"
                      artist: @"Deep Purple"
                       album: @"In Rock"
                     minutes: 4
                     seconds: 11];
  Song *s3 = [[Song alloc]
               initWithTitle: @"Child in Time"
                      artist: @"Deep Purple"
                       album: @"In Rock"
                     minutes: 10
                     seconds: 16];
  Song *s4 = [[Song alloc]
               initWithTitle: @"Hush"
                      artist: @"Deep Purple"
                       album: @"Shades of Deep Purple"
                     minutes: 4
                     seconds: 24];
  Song *s5 = [[Song alloc]
               initWithTitle: @"Sunrise"
                      artist: @"Jon Lord"
                       album: @"Pictured Within"
                     minutes: 5
                     seconds: 47];

  Playlist *inRock = [[Playlist alloc] initWithName: @"Deep Purple In Rock"];
  [inRock addSong: s1];
  [inRock addSong: s2];
  [inRock addSong: s3];

  Playlist *dp1969 = [[Playlist alloc] initWithName: @"Deep Purple"];
  [dp1969 addSong: s4];

  Playlist *picWithin = [[Playlist alloc] initWithName: @"Pictured Within"];
  [picWithin addSong: s5];

  Playlist *favourites = [[Playlist alloc] initWithName: @"Favourites"];
  [favourites addSong: s3];
  [favourites addSong: s1];
  
  MusicCollection *dp = [[MusicCollection alloc] init];

  [dp addPlaylist: inRock];
  [dp addPlaylist: dp1969];
  [dp addPlaylist: picWithin];
  [dp addPlaylist: favourites];

  NSLog (@"%@", [dp description]);
  [dp printUsage];

  // Search
  displaySearch(dp, @"uck");
  displaySearch(dp, @"urpl");

  // Remove "Pictured Within" playlist
  [dp removePlaylist: picWithin];
  NSLog (@"%@", [dp description]);
  [dp printUsage];

  // Remove "Child in Time" song
  [[dp library] removeSong: s3];
  NSLog (@"%@", [dp description]);
  [dp printUsage];

  [s1 release];
  [s2 release];
  [s3 release];
  [s4 release];
  [s5 release];

  [inRock release];
  [dp1969 release];
  [picWithin release];
  [favourites release];
  [dp release];
  [pool drain];
  return 0;
}
