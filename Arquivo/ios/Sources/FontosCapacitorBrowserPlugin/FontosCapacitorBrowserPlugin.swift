import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(FontosCapacitorBrowserPlugin)
public class FontosCapacitorBrowserPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "FontosCapacitorBrowserPlugin"
    public let jsName = "FontosCapacitorBrowser"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = FontosCapacitorBrowser()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
