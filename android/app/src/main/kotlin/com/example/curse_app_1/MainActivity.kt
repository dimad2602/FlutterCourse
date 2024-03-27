package com.example.curse_app_1

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity(), MethodChannel.MethodCallHandler {
    private val CHANNEL = "curse_app_1.example.com/calculations_channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "getSummary" -> {
                val arguments = call.arguments as? List<Int>
                if (arguments != null && arguments.size == 2) {
                    val x = arguments[0]
                    val y = arguments[1]
                    val summary = getSummary(x, y)
                    result.success(summary)
                } else {
                    result.error("INVALID_ARGUMENTS", "Invalid arguments", null)
                }
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    private fun getSummary(x: Int, y: Int): Int {
        return x + y
    }

}

