/*
Inserts the default core settings in the KeyValue store.
*/

-- http.*
insert into Setting([Key], Value) values('http.binding', '"localhost"');
insert into Setting([Key], Value) values('http.port', '7890');

-- bt
insert into Setting([Key], Value) values('bt.disable_hash_checks', 'false');
insert into Setting([Key], Value) values('bt.ignore_resume_timestamps', 'false');
insert into Setting([Key], Value) values('bt.no_recheck_incomplete_resume', 'false');
insert into Setting([Key], Value) values('bt.save_path', '"C:\\Downloads"');
insert into Setting([Key], Value) values('bt.tick_interval', '500');

-- bt.net
insert into Setting([Key], Value) values('bt.net.active_dht_limit', '88');
insert into Setting([Key], Value) values('bt.net.active_downloads', '3');
insert into Setting([Key], Value) values('bt.net.active_limit', '15');
insert into Setting([Key], Value) values('bt.net.active_lsd_limit', '60');
insert into Setting([Key], Value) values('bt.net.active_seeds', '5');
insert into Setting([Key], Value) values('bt.net.active_tracker_limit', '1600');
insert into Setting([Key], Value) values('bt.net.allow_i2p_mixed', 'false');
insert into Setting([Key], Value) values('bt.net.allow_multiple_connections_per_ip', 'false');
insert into Setting([Key], Value) values('bt.net.allowed_fast_set_size', '10');
insert into Setting([Key], Value) values('bt.net.always_send_user_agent', 'false');
insert into Setting([Key], Value) values('bt.net.announce_double_nat', 'false');
insert into Setting([Key], Value) values('bt.net.announce_ip', '""');
insert into Setting([Key], Value) values('bt.net.announce_to_all_tiers', 'false');
insert into Setting([Key], Value) values('bt.net.announce_to_all_trackers', 'false');
insert into Setting([Key], Value) values('bt.net.anonymous_mode', 'true');
insert into Setting([Key], Value) values('bt.net.apply_ip_filter_to_trackers', 'true');
insert into Setting([Key], Value) values('bt.net.auto_manage_interval', '30');
insert into Setting([Key], Value) values('bt.net.auto_manage_prefer_seeds', 'false');
insert into Setting([Key], Value) values('bt.net.auto_manage_startup', '60');
insert into Setting([Key], Value) values('bt.net.auto_scrape_interval', '1800');
insert into Setting([Key], Value) values('bt.net.auto_scrape_min_interval', '300');
insert into Setting([Key], Value) values('bt.net.ban_web_seeds', 'true');
insert into Setting([Key], Value) values('bt.net.broadcast_lsd', 'true');
insert into Setting([Key], Value) values('bt.net.choking_algorithm', '0');
insert into Setting([Key], Value) values('bt.net.close_reduntant_connections', 'true');
insert into Setting([Key], Value) values('bt.net.connection_speed', '6');
insert into Setting([Key], Value) values('bt.net.connections_limit', '200');
insert into Setting([Key], Value) values('bt.net.connections_slack', '10');
insert into Setting([Key], Value) values('bt.net.decrease_est_reciprocation_rate', '3');
insert into Setting([Key], Value) values('bt.net.default_est_reciprocation_rate', '16000');
insert into Setting([Key], Value) values('bt.net.dht_announce_interval', '900');
insert into Setting([Key], Value) values('bt.net.dht_upload_rate_limit', '4000');
insert into Setting([Key], Value) values('bt.net.dont_count_slow_torrents', 'true');
insert into Setting([Key], Value) values('bt.net.download_rate_limit', '0');
insert into Setting([Key], Value) values('bt.net.drop_skipped_requests', 'false');
insert into Setting([Key], Value) values('bt.net.enable_incoming_tcp', 'true');
insert into Setting([Key], Value) values('bt.net.enable_incoming_utp', 'true');
insert into Setting([Key], Value) values('bt.net.enable_outgoing_tcp', 'true');
insert into Setting([Key], Value) values('bt.net.enable_outgoing_utp', 'true');
insert into Setting([Key], Value) values('bt.net.force_proxy', 'false');
insert into Setting([Key], Value) values('bt.net.ignore_limits_on_local_network', 'true');
insert into Setting([Key], Value) values('bt.net.inactive_down_rate', '2048');
insert into Setting([Key], Value) values('bt.net.inactive_up_rate', '2048');
insert into Setting([Key], Value) values('bt.net.inactivity_timeout', '600');
insert into Setting([Key], Value) values('bt.net.incoming_starts_queued_torrents', 'false');
insert into Setting([Key], Value) values('bt.net.increase_est_reciprocation_rate', '20');
insert into Setting([Key], Value) values('bt.net.initial_picker_threshold', '4');
insert into Setting([Key], Value) values('bt.net.lazy_bitfields', 'true');
insert into Setting([Key], Value) values('bt.net.listen_port', '6881');
insert into Setting([Key], Value) values('bt.net.listen_queue_size', '5');
insert into Setting([Key], Value) values('bt.net.local_download_rate_limit', '0');
insert into Setting([Key], Value) values('bt.net.local_service_announce_interval', '300');
insert into Setting([Key], Value) values('bt.net.local_upload_rate_limit', '0');
insert into Setting([Key], Value) values('bt.net.half_open_limit', '-1');
insert into Setting([Key], Value) values('bt.net.handshake_timeout', '10');
insert into Setting([Key], Value) values('bt.net.max_allowed_in_request_queue', '500');
insert into Setting([Key], Value) values('bt.net.max_failcount', '3');
insert into Setting([Key], Value) values('bt.net.max_http_recv_buffer_size', '4194304');
insert into Setting([Key], Value) values('bt.net.max_metadata_size', '3145728');
insert into Setting([Key], Value) values('bt.net.max_out_request_queue', '500');
insert into Setting([Key], Value) values('bt.net.max_paused_peerlist_size', '4000');
insert into Setting([Key], Value) values('bt.net.max_peerlist_size', '4000');
insert into Setting([Key], Value) values('bt.net.max_pex_peers', '50');
insert into Setting([Key], Value) values('bt.net.max_rejects', '50');
insert into Setting([Key], Value) values('bt.net.max_suggest_pieces', '10');
insert into Setting([Key], Value) values('bt.net.min_announce_interval', '300');
insert into Setting([Key], Value) values('bt.net.min_reconnect_time', '60');
insert into Setting([Key], Value) values('bt.net.mixed_mode_algorithm', '1');
insert into Setting([Key], Value) values('bt.net.num_optimistic_unchoke_slots', '0');
insert into Setting([Key], Value) values('bt.net.num_want', '200');
insert into Setting([Key], Value) values('bt.net.optimistic_unchoke_interval', '30');
insert into Setting([Key], Value) values('bt.net.peer_connect_timeout', '15');
insert into Setting([Key], Value) values('bt.net.peer_timeout', '120');
insert into Setting([Key], Value) values('bt.net.peer_turnover', '0.04');
insert into Setting([Key], Value) values('bt.net.peer_turnover_cutoff', '0.9');
insert into Setting([Key], Value) values('bt.net.peer_turnover_interval', '300');
insert into Setting([Key], Value) values('bt.net.piece_timeout', '20');
insert into Setting([Key], Value) values('bt.net.prefer_udp_trackers', 'true');
insert into Setting([Key], Value) values('bt.net.prioritize_partial_pieces', 'false');
insert into Setting([Key], Value) values('bt.net.rate_limit_ip_overhead', 'true');
insert into Setting([Key], Value) values('bt.net.rate_limit_utp', 'true');
insert into Setting([Key], Value) values('bt.net.recv_socket_buffer_size', '0');
insert into Setting([Key], Value) values('bt.net.report_redundant_bytes', 'true');
insert into Setting([Key], Value) values('bt.net.report_true_downloaded', 'false');
insert into Setting([Key], Value) values('bt.net.report_web_seed_downloads', 'true');
insert into Setting([Key], Value) values('bt.net.request_queue_time', '3');
insert into Setting([Key], Value) values('bt.net.request_timeout', '50');
insert into Setting([Key], Value) values('bt.net.seed_choking_algorithm', '0');
insert into Setting([Key], Value) values('bt.net.seed_time_limit', '86400');
insert into Setting([Key], Value) values('bt.net.seed_time_ratio_limit', '7.0');
insert into Setting([Key], Value) values('bt.net.seeding_outgoing_connections', 'true');
insert into Setting([Key], Value) values('bt.net.seeding_piece_quota', '20');
insert into Setting([Key], Value) values('bt.net.send_buffer_low_watermark', '512');
insert into Setting([Key], Value) values('bt.net.send_buffer_watermark', '512000');
insert into Setting([Key], Value) values('bt.net.send_buffer_watermark_factor', '50');
insert into Setting([Key], Value) values('bt.net.send_redundant_have', 'true');
insert into Setting([Key], Value) values('bt.net.send_socket_buffer_size', '0');
insert into Setting([Key], Value) values('bt.net.share_mode_target', '3');
insert into Setting([Key], Value) values('bt.net.share_ratio_limit', '2.0');
insert into Setting([Key], Value) values('bt.net.smooth_connects', 'true');
insert into Setting([Key], Value) values('bt.net.stop_tracker_timeout', '5');
insert into Setting([Key], Value) values('bt.net.support_merkle_torrents', 'false');
insert into Setting([Key], Value) values('bt.net.support_share_mode', 'true');
insert into Setting([Key], Value) values('bt.net.ssl_listen_port', '4433');
insert into Setting([Key], Value) values('bt.net.strict_end_game_mode', 'true');
insert into Setting([Key], Value) values('bt.net.strict_super_seeding', 'false');
insert into Setting([Key], Value) values('bt.net.suggest_mode', '0');
insert into Setting([Key], Value) values('bt.net.torrent_connect_boost', '10');
insert into Setting([Key], Value) values('bt.net.tracker_backoff', '250');
insert into Setting([Key], Value) values('bt.net.tracker_completion_timeout', '60');
insert into Setting([Key], Value) values('bt.net.tracker_maximum_response_length', '1048576');
insert into Setting([Key], Value) values('bt.net.tracker_receive_timeout', '40');
insert into Setting([Key], Value) values('bt.net.udp_tracker_token_expiry', '60');
insert into Setting([Key], Value) values('bt.net.unchoke_interval', '15');
insert into Setting([Key], Value) values('bt.net.unchoke_slots_limit', '8');
insert into Setting([Key], Value) values('bt.net.upload_rate_limit', '0');
insert into Setting([Key], Value) values('bt.net.upnp_ignore_nonrouters', 'false');
insert into Setting([Key], Value) values('bt.net.urlseed_pipeline_size', '5');
insert into Setting([Key], Value) values('bt.net.urlseed_timeout', '20');
insert into Setting([Key], Value) values('bt.net.urlseed_wait_retry', '30');
insert into Setting([Key], Value) values('bt.net.use_dht_as_fallback', 'false');
insert into Setting([Key], Value) values('bt.net.use_parole_mode', 'true');
insert into Setting([Key], Value) values('bt.net.utp_connect_timeout', '3000');
insert into Setting([Key], Value) values('bt.net.utp_dynamic_sock_buf', 'false');
insert into Setting([Key], Value) values('bt.net.utp_gain_factor', '1500');
insert into Setting([Key], Value) values('bt.net.utp_loss_multiplier', '50');
insert into Setting([Key], Value) values('bt.net.utp_min_timeout', '500');
insert into Setting([Key], Value) values('bt.net.utp_fin_resends', '2');
insert into Setting([Key], Value) values('bt.net.utp_num_resends', '6');
insert into Setting([Key], Value) values('bt.net.utp_syn_resends', '2');
insert into Setting([Key], Value) values('bt.net.utp_target_delay', '100');
insert into Setting([Key], Value) values('bt.net.whole_pieces_threshold', '20');


-- bt.diskio
insert into Setting([Key], Value) values('bt.diskio.allow_reordered_disk_operations', 'true');
insert into Setting([Key], Value) values('bt.diskio.cache_buffer_chunk_size', '16');
insert into Setting([Key], Value) values('bt.diskio.cache_expiry', '300');
insert into Setting([Key], Value) values('bt.diskio.cache_size', '1024');
insert into Setting([Key], Value) values('bt.diskio.coalesce_reads', 'false');
insert into Setting([Key], Value) values('bt.diskio.coalesce_writes', 'false');
insert into Setting([Key], Value) values('bt.diskio.explicit_cache_interval', '30');
insert into Setting([Key], Value) values('bt.diskio.explicit_read_cache', 'false');
insert into Setting([Key], Value) values('bt.diskio.default_cache_min_age', '1');
insert into Setting([Key], Value) values('bt.diskio.file_checks_delay_per_block', '0');
insert into Setting([Key], Value) values('bt.diskio.file_pool_size', '40');
insert into Setting([Key], Value) values('bt.diskio.guided_read_cache', 'false');
insert into Setting([Key], Value) values('bt.diskio.lock_disk_cache', 'false');
insert into Setting([Key], Value) values('bt.diskio.lock_files', 'false');
insert into Setting([Key], Value) values('bt.diskio.low_prio_disk', 'true');
insert into Setting([Key], Value) values('bt.diskio.max_queued_disk_bytes', '1048576');
insert into Setting([Key], Value) values('bt.diskio.max_queued_disk_bytes_low_watermark', '0');
insert into Setting([Key], Value) values('bt.diskio.max_sparse_regions', '30000');
insert into Setting([Key], Value) values('bt.diskio.optimistic_disk_retry', '600');
insert into Setting([Key], Value) values('bt.diskio.optimize_hashing_for_speed', 'true');
insert into Setting([Key], Value) values('bt.diskio.read_cache_line_size', '32');
insert into Setting([Key], Value) values('bt.diskio.read_job_every', '10');
insert into Setting([Key], Value) values('bt.diskio.read_mode', '0');
insert into Setting([Key], Value) values('bt.diskio.use_disk_cache_pool', 'false');
insert into Setting([Key], Value) values('bt.diskio.use_disk_read_ahead', 'true');
insert into Setting([Key], Value) values('bt.diskio.use_read_cache', 'true');
insert into Setting([Key], Value) values('bt.diskio.volatile_read_cache', 'false');
insert into Setting([Key], Value) values('bt.diskio.write_cache_line_size', '32');
insert into Setting([Key], Value) values('bt.diskio.write_mode', '0');