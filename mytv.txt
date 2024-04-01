<?php

$CHANNEL_LIST = array(
    'J' => array(
        'name' => '翡翠台',
        'license' => '0958b9c657622c465a6205eb2252b8ed:2d2fd7b1661b1e28de38268872b48480'
    ),
    'JUHD' => array(
        'name' => '翡翠台 4K',
        'license' => '2c045f5adb26d391cc41cd01f00416fa:fc146771a9b096fc4cb57ffe769861be'
    ),
    'B' => array(
        'name' => 'J2',
        'license' => '56603b65fa1d7383b6ef0e73b9ae69fa:5d9d8e957d2e45d8189a56fe8665aaaa'
    ),
    'P' => array(
        'name' => '明珠台',
        'license' => 'e04facdd91354deee318c674993b74c1:8f97a629de680af93a652c3102b65898'
    ),
    'CWIN' => array(
        'name' => 'Super Free',
        'license' => '0737b75ee8906c00bb7bb8f666da72a0:15f515458cdb5107452f943a111cbe89'
    ),
    'TVG' => array(
        'name' => '黄金翡翠台',
        'license' => '8fe3db1a24969694ae3447f26473eb9f:5cce95833568b9e322f17c61387b306f'
    ),
    'C' => array(
        'name' => '无线新闻台',
        'license' => '90a0bd01d9f6cbb39839cd9b68fc26bc:51546d1f2af0547f0e961995b60a32a1'
    ),
    'A' => array(
        'name' => '无线财经体育资讯台',
        'license' => '91db728a2806d0a0bbb9d92e608f5498:6e96ea66f51b2b9c16c5d6c5b3314a86'
    ),
    'CTVE' => array(
        'name' => '娱乐新闻台',
        'license' => '6fa0e47750b5e2fb6adf9b9a0ac431a3:a256220e6c2beaa82f4ca5fba4ec1f95'
    ),
    'PCC' => array(
        'name' => '凤凰卫视中文台',
        'license' => '7bca0771ba9205edb5d467ce2fdf0162:eb19c7e3cea34dc90645e33f983b15ab'
    ),
    'PIN' => array(
        'name' => '凤凰卫视资讯台',
        'license' => '83f7d313adfc0a5b978b9efa0421ce25:ecdc8065a46287bfb58e9f765e4eec2b'
    ),
    'PHK' => array(
        'name' => '凤凰卫视香港台',
        'license' => 'cde62e1056eb3615dab7a3efd83f5eb4:b8685fbecf772e64154630829cf330a3'
    ),
    'EVT1' => array(
        'name' => 'myTV SUPER直播足球1台',
        'license' => 'e8ca7903e25450d85cb32b3057948522:d5db5c03608f5f6c8a382c6abcb829e4'
    )
);

function get_mytvsuper($channel) {
    global $CHANNEL_LIST;

    if (!array_key_exists($channel, $CHANNEL_LIST)) {
        echo '频道代号错误';
        return;
    }

    $api_token = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJib3NzX2lkIjoiODUwNDY0NTgwIiwiZGV2aWNlX3Rva2VuIjoiWHp6anMzYTVKTms2TFpnZmJQeFZHR2QzIiwiZGV2aWNlX2lkIjoiTldGalptSmxNREF0TkRJNU5TMDBaakV3TFRrNFl6QXRNbUkwT0RCbFpXRTJaVEV3IiwiZGV2aWNlX3R5cGUiOiJ3ZWIiLCJkZXZpY2Vfb3MiOiJicm93c2VyIiwiZHJtX2lkIjoiTldGalptSmxNREF0TkRJNU5TMDBaakV3TFRrNFl6QXRNbUkwT0RCbFpXRTJaVEV3IiwiZXh0cmEiOnsicHJvZmlsZV9pZCI6MX0sImlhdCI6MTcwOTgwNTA3NywiZXhwIjoxNzA5ODA4Njc3fQ.XG-C6gWxLgbBRQ3ttKn68AKMQLOg6SxTpbmHxXl_qI2dbjd1eFFmwB9kD1yd2N_X8HxLPBwJukD4lygIKxbBGrQQDY_1vNd76TldllaeE2BC3fUtc-kAFOU4JwbUkfFYsWVm3v2JP-YGM2GGlhFqN_3170WDAi2Gq-R0tZckeFNWk7jOSShqkE0E7L3eqJ09sDG76R-PCbdpnCIxaY_NXtoYRfIoVQZA9QysExUyO6hQGUxLaTvJDtflX_ZM3OiqTMndHp1p0cDsINnpFokD6Yby5XS18RjQ-Dn1XJznj7-sRjlaGgyIIBoJjxsR2oD5S8teA5S6x7w3Dv6uTO3bWVV9J60E6jguGVqKnSYJ4Rx8A1TgyUTT_g57key6UFIiEhkHYqk7s3H01V-lHffNp5zDo9UrCdaO6maW_ZeA85ohR6P1PMh9EakQ5A-vok60s2oqyokKHfyrQvcodsI-MTC9mKegjJzgV2-HBgyylyj6B2ewvE4icDD25UdspWgbc33NrRpe_kgPxgVKF4cgKCD-S1AT3WrOaqKnPfPvhqmlciwlpZrUqZg09BqcazWPoyWAp2nqf93H6tlDqMrtAQgvft3Nd8-cM7jYx-WvzqRrCRpZ8vRSv11UdezKzR2Jm4H64KTWbs3GxB5vboZaeypdEzQW6PipPpftqRnNMQU';  // 请自行获取
    $headers = array(
        'Accept: application/json',
        'Authorization: Bearer ' . $api_token,
        'Accept-Language: zh-CN,zh-Hans;q=0.9',
        'Host: user-api.mytvsuper.com',
        'Origin: https://www.mytvsuper.com',
        'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.2 Safari/605.1.15',
        'Referer: https://www.mytvsuper.com/',
        'X-Forwarded-For: 210.6.4.148'  // 香港原生IP  210.6.4.148
    );

    $params = array(
        'platform' => 'android_tv',
        'network_code' => $channel
    );

    $url = 'https://user-api.mytvsuper.com/v1/channel/checkout?' . http_build_query($params);
    $context = stream_context_create(array('http' => array('header' => implode("\r\n", $headers))));
    $response = file_get_contents($url, false, $context);
    //echo $response;
   // exit;
    if ($response === false) {
        echo '请求失败';
        return;
    }

    $response_json = json_decode($response, true);
    $profiles = $response_json['profiles'];
    
    $play_url = '';
    foreach ($profiles as $profile) {
        if ($profile['quality'] === 'high') {
            $play_url = $profile['streaming_path'];
            break;
        }
    }

    if (empty($play_url)) {
        echo '未找到播放地址';
        return;
    }

    $play_url = explode('&p=', $play_url)[0];

    header('content-type:application/x-mpegURL');
    $license_key=$CHANNEL_LIST[$channel]['license'];
    echo "#EXTM3U\n";
    echo "#EXTINF:-1,JLPGA\n";
    echo "#KODIPROP:inputstream.adaptive.manifest_type=dash\n";
    echo "#KODIPROP:inputstream.adaptive.license_type=clearkey\n";
    echo "#kodiprop:inputstream.adaptive.license_key=".$license_key."\n";
    echo  $play_url."\n";
}
//http://xxx/mytv.php?id=PHK  用VLC可以播放
$id=isset($_GET['id'])?$_GET['id']:'J';
get_mytvsuper($id);

//http://127.0.0.1/mytv.php?id=JUHD