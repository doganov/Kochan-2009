#import <Foundation/Foundation.h>

@interface Song : NSObject
{
  NSString *title;
  NSString *artist;
  NSString *album;
  NSInteger seconds;
}
@property (copy) NSString *title, *artist, *album;
@property NSInteger seconds;
-(Song*) initWithTitle: (NSString*) atitle
                artist: (NSString*) anartist
                 album: (NSString*) analbum
               seconds: (NSInteger) aseconds;
-(Song*) initWithTitle: (NSString*) atitle
                artist: (NSString*) anartist
                 album: (NSString*) analbum
               minutes: (NSInteger) aminutes
               seconds: (NSInteger) aseconds;
@end

@class MusicCollection;

@interface Playlist : NSObject
{
  NSString *name;
  NSMutableArray *songs;
  MusicCollection *master;
}
@property (copy) NSString *name;
-(Playlist*) initWithName: (NSString*) aname;
-(void) setMusicCollection: (MusicCollection*) collection;
-(void) addSong: (Song*) song;
-(void) removeSong: (Song*) song;
-(NSArray*) songs;
@end

@interface MusicCollection : NSObject
{
  NSMutableArray *playlists;
  Playlist *library;
  NSCountedSet *songs;
}
-(void) addPlaylist: (Playlist*) playlist;
-(void) removePlaylist: (Playlist*) playlist;
-(NSArray*) playlists;
-(Playlist*) library;
-(void) printUsage;
@end
