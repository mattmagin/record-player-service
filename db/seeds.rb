require_relative '../models/tag'
require_relative '../models/spotify_record'

# Tags.create(tag_code: "Test Tag", identifier: "1", spotify_record_id: 1)

example_spotify_records = [
    {uri: "5DIgFG1fM76vmNYlvfv2JJ", record_type: "album"}, #Lumineers iii
    {uri: "26HAAGfOhnc0CqqcHoaQGD", record_type: "album"}, #Lumineers cleopatra
    {uri: "0rpP7RK9FEdwTC8BDjDSLj", record_type: "album"}, #Filmore State Im In
    {uri: "5eDLHSsctG7CccVeYSTLeh", record_type: "album"}, #Burn the Ships
    {uri: "3uHzOYpGyy06LsIfBi4r9e", record_type: "album"}, #What are we waiting for
    {uri: "3pldpOkIoJqYnkuOTWTipi", record_type: "album"}, #Unsung Hero
    {uri: "65MKJshn1AdDBvt99IRTSu", record_type: "album"}, #At the roadhouse
    {uri: "4TBDgyNsiHYu9xTbasFCE9", record_type: "album"}, #Woodland
    {uri: "2fenSS68JI1h4Fo296JfGr", record_type: "album"}, #Folklore
    {uri: "151w1FgRZfnKZA9FEcg9Z3", record_type: "album"}, #Midnights
    {uri: "1Mo4aZ8pdj6L1jx8zSwJnt", record_type: "album"}, #The Tortured Poets Dep
    {uri: "2Xoteh7uEpea4TohMxjtaq", record_type: "album"}, #Evermore
]

example_tags = [
    {tag_code: "111111", identifier: "1", spotify_record: example_spotify_records[0]},
    {tag_code: "222222", identifier: "2", spotify_record: example_spotify_records[1]},
    {tag_code: "333333", identifier: "3", spotify_record: example_spotify_records[2]},
    {tag_code: "444444", identifier: "4", spotify_record: example_spotify_records[3]},
    {tag_code: "555555", identifier: "5", spotify_record: example_spotify_records[4]},
    {tag_code: "666666", identifier: "6", spotify_record: example_spotify_records[5]},
    {tag_code: "777777", identifier: "7", spotify_record: example_spotify_records[6]},
    {tag_code: "888888", identifier: "8", spotify_record: example_spotify_records[7]},
    {tag_code: "999999", identifier: "9", spotify_record: example_spotify_records[8]},
    {tag_code: "101010", identifier: "10", spotify_record: example_spotify_records[9]},
    {tag_code: "111111", identifier: "11", spotify_record: example_spotify_records[10]},
    {tag_code: "121212", identifier: "12", spotify_record: example_spotify_records[11]},  
]

example_tags.each do |tag|
    puts tag[:spotify_record][:uri]
    spotify = SpotifyRecord.create(uri: tag[:spotify_record][:uri], record_type: tag[:spotify_record][:record_type] )
    Tag.create(tag_code: tag[:tag_code], identifier: tag[:identifier], spotify_record_id: spotify.id)
end