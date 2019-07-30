package com.development.elbyte.m_k_w

import android.os.Bundle
import com.facebook.FacebookSdk

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        FacebookSdk.setApplicationId("2290307621046318")
        FacebookSdk.sdkInitialize(getApplicationContext());
        GeneratedPluginRegistrant.registerWith(this)
    }
}
