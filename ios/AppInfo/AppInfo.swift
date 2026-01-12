@objc(AppInfo)
class AppInfo: NSObject {

  @objc
  func getAppInfo(
    _ resolve: RCTPromiseResolveBlock,
    rejecter reject: RCTPromiseRejectBlock
  ) {
    let info = Bundle.main.infoDictionary

    resolve([
      "version": info?["CFBundleShortVersionString"] as? String ?? "",
      "buildNumber": info?["CFBundleVersion"] as? String ?? "",
      "platform": "ios"
    ])
  }
}
