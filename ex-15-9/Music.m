#import "Music.h"

@interface MusicCollection (private)
-(void) retainSong: (Song *) song;
-(void) releaseSong: (Song *) song;
@end

@implementation Song

-(Song*) initWithTitle: (NSString*) atitle
                artist: (NSString*) anartist
                 album: (NSString*) analbum
               seconds: (NSInteger) aseconds
{
  self = [self init];
  if (self != nil) {
    self.title = atitle;
    self.artist = anartist;
    self.album = analbum;
    self.seconds = aseconds;
  }
  return self;
}

-(Song*) initWithTitle: (NSString*) atitle
                artist: (NSString*) anartist
                 album: (NSString*) analbum
               minutes: (NSInteger) aminutes
               seconds: (NSInteger) aseconds
{
  return [self initWithTitle: atitle
                      artist: anartist
                       album: analbum
                     seconds: (60 * aminutes) + aseconds];
}

@synthesize title, artist, album, seconds;

-(NSString*) description
{
  NSInteger min = seconds / 60;
  NSInteger sec = seconds % 60;
  return [NSString
           stringWithFormat: @"%@ [%@ '%@' %d:%d]",
           title, artist, album, min, sec];
}

@end

@implementation Playlist

@synthesize name;

-(Playlist*) init
{
  self = [super init];
  if (self != nil)
    songs = [[NSMutableArray alloc] init];
  return self;
}

-(Playlist*) initWithName: (NSString*) aname
{
  self = [self init];
  if (self != nil) {
    self.name = aname;
    songs = [[NSMutableArray alloc] init];
  }
  return self;
}

-(void) dealloc
{
  [songs release];
  [super dealloc];
}

-(void) setMusicCollection: (MusicCollection*) collection
{
  master = collection;
}

-(void) addSong: (Song*) song
{
  [songs addObject: song];
  [master retainSong: song];
}

-(void) removeSong: (Song*) song
{
  if ([songs containsObject: song]) {
    [songs removeObject: song];
    [master releaseSong: song];
  }
}

-(NSArray*) songs
{
  return songs;
}

-(NSString*) description
{
  return [NSString stringWithFormat: @"Playlist %@: %@", name, songs];
}

@end

@interface _Library : Playlist
@end

@implementation _Library
-(void) addSong: (Song*) song
{
  [songs addObject: song];
}

-(void) removeSong: (Song*) song
{
  [songs removeObject: song];
  for (Playlist *p in [master playlists])
    [p removeSong: song];
}
@end

@implementation MusicCollection

-(MusicCollection*) init
{
  self = [super init];
  if (self != nil) {
    playlists = [[NSMutableArray alloc] initWithCapacity: 5];
    library = [[_Library alloc] init];
    [library setMusicCollection: self];
    songs = [[NSCountedSet alloc] init];
  }
  return self;
}

-(void) dealloc
{
  [playlists release];
  [library release];
  [songs release];
  [super dealloc];
}

-(NSArray *) playlists
{
  return playlists;
}

-(Playlist *) library
{
  return library;
}

-(void) addPlaylist: (Playlist *) playlist
{
  [playlists addObject: playlist];
  for (Song *song in [playlist songs])
    [self retainSong: song];
  [playlist setMusicCollection: self];
}

-(void) removePlaylist: (Playlist *) playlist {
  [playlists removeObject: playlist];
  for (Song *song in [playlist songs])
    [self releaseSong: song];
  [playlist setMusicCollection: nil];
}

-(NSString*) description
{
  return [NSString stringWithFormat: @"Collection %@", playlists];
}

-(void) printUsage
{
  for (Song *song in songs) {
    NSUInteger count = [songs countForObject: song];
    NSMutableString *gauge = [[NSMutableString alloc] initWithCapacity: 100];
    int i;
    for (i = 0; i < count; i++)
      [gauge appendString: @"*"];

    NSLog (@"%55@: %@", song, gauge);
    [gauge release];
  }
}

//+(void) forgetSong: (Song *) song
//{
//}
@end

@implementation MusicCollection (private)
-(void) retainSong: (Song *) song
{
  [songs addObject: song];
}

-(void) releaseSong: (Song *) song
{
  [songs removeObject: song];
  if ([songs countForObject: song] == 0)
    [library removeSong: song];
}
@end
