<?php
namespace App;
use SslWireless\SslWirelessSms;

class SendCode
{
    public static function sendCode($phone){
        $code=rand(11111,99999);
        // $nexmo=app('Nexmo\Client');
        // $nexmo->message()->send([
        //     'to'=>'+880'.(int) $phone,
        //     'from'=> '+8801832258644',
        //     'text'=>'Verify code: '.$code,
        // ]);
        // return $code;

        // username, password, sid provided by sslwireless
    $SslWirelessSms = new SslWirelessSms('DTCA','71>5Z89g', 'DTCABRANDENG');
        // You can change the api url if needed. i.e.
        // $SslWirelessSms->setUrl('new_url');
    $output = $SslWirelessSms->send($phone,$code);

        //dd($output);
        return $code;
    }

}
