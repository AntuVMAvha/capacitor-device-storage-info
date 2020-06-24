declare module "@capacitor/core" {
  interface PluginRegistry {
    DeviceStorageInfo: DeviceStorageInfoPlugin;
  }
}

export interface DeviceStorageInfoPlugin {
  echo(options: { value: string }): Promise<{value: string}>;
  getDeviceStorageInfo(): Promise<{ total: number, available: number }>;
}
