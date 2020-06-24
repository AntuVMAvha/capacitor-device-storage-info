// @ts-ignore
declare module "@capacitor/core" {
  interface PluginRegistry {
    DeviceStorageInfo: DeviceStorageInfo;
  }
}

export interface DeviceStorageInfo {
  echo(options: { value: string }): Promise<{value: string}>;
  getDeviceStorageInfo(): Promise<{ total: number, available: number }>;
}
