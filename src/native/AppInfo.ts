import { NativeModules, Platform } from 'react-native';

type AppInfoType = {
  getAppInfo(): Promise<{
    version: string;
    buildNumber: string;
    platform: 'android' | 'ios';
  }>;
};

const { AppInfo } = NativeModules;

export default AppInfo as AppInfoType;
