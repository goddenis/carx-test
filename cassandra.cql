CREATE KEYSPACE carx WITH REPLICATION = { 'class' : 'org.apache.cassandra.locator.SimpleStrategy', 'replication_factor': '1' } AND DURABLE_WRITES = true;

CREATE TABLE carx.activities (
    user_id uuid,
    "date" timestamp,
    activity int,
    PRIMARY KEY ((user_id) , date)
) WITH read_repair_chance = 0.0 AND dclocal_read_repair_chance = 0.1 AND gc_grace_seconds = 864000
   AND bloom_filter_fp_chance = 0.01 AND caching = { 'keys' : 'ALL', 'rows_per_partition' : 'NONE' }
   AND comment = '' AND compaction = { 'class' : 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy' }
   AND compression = { 'sstable_compression' : 'org.apache.cassandra.io.compress.LZ4Compressor' }
   AND default_time_to_live = 0 AND speculative_retry = '99.0PERCENTILE' AND min_index_interval = 128
   AND max_index_interval = 2048;
---
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:05', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:06', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:07', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:08', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:09', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:10', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:11', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:12', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:13', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:14', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:15', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:16', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:17', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:18', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:00:19', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:01:20', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:02:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:03:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:04:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:05:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:06:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:07:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:08:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:09:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:10:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:11:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:12:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:13:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:14:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:15:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:16:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:17:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:18:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:19:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:20:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-01 00:21:04', 0);
---
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:05', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:06', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:07', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:08', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:09', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:10', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:11', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:12', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:13', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:14', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:15', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:16', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:17', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:18', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:00:19', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:01:20', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:02:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:03:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:04:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:05:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:06:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:07:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:08:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:09:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:10:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:11:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:12:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:13:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:14:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:15:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:16:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:17:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:18:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:19:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:20:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-02 00:21:04', 0);
---
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:05', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:06', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:07', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:08', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:09', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:10', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:11', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:12', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:13', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:14', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:15', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:16', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:17', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:18', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:00:19', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:01:20', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:02:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:03:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:04:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:05:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:06:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:07:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:08:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:09:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:10:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:11:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:12:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:13:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:14:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:15:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:16:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:17:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:18:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:19:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:20:04', 0);
INSERT INTO carx.activities (user_id, "date",   activity) VALUES(550e8400-e29b-41d4-a716-446655440000,   '2016-11-03 00:21:04', 0);

select * from carx.activities where user_id=550e8400-e29b-41d4-a716-446655440000 and "date" >= '2016-11-01' and "date" <= '2016-11-02' allow filtering;
