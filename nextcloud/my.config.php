<?php
$CONFIG = array (
    'trusted_domains' => 
  array (
    0 => '192.168.178.55:1240',
  #  1 => '192.168.178.55:80',
  #  2 => '192.168.178.55:8080',
  ),  
  #'overwritewebroot' => '/nextcloud',
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'enable_previews' => true,
  'preview_max_x' => 2048,
  'preview_max_y' => 2048, 
  'preview_max_scale_factor' => 1,
  'jpeg_quality' => 60,
);