import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(DeviceStorageInfo)
public class DeviceStorageInfo: CAPPlugin {
    
    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.success([
            "value": value
        ])
    }

    @objc func getDeviceStorageInfo(_ call: CAPPluginCall) {
        let fileURL = URL(fileURLWithPath: NSHomeDirectory() as String)
        do {
            let available = try fileURL.resourceValues(forKeys: [.volumeAvailableCapacityKey])
            let total = try fileURL.resourceValues(forKeys: [.volumeTotalCapacityKey])

            if available.volumeAvailableCapacityUsage {
                //
            } else {
                call.error("Couldn't get available capacity")
            }

            if total.volumeTotalCapacityUsage {
                //
            } else {
                call.error("Couldn't get total capacity")
            }

            call.success([
                "total": total.volumeTotalCapacityUsage,
                "available": available.volumeAvailableCapacityUsage
            ])
        } catch {
            call.error("Error retrieving capacity: \(error.localizedDescription)")
        }
    }
}
