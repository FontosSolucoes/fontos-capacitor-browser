export interface FontosCapacitorBrowserPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
