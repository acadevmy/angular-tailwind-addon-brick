import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {}

Future<void> runPnpm({
  required HookContext context,
}) async {
  context.logger.info(
    '🌬️ Running pnpm install -D tailwindcss postcss autoprefixer',
  );

  await Process.run(
    'pnpm',
    ['install', '-D', 'tailwindcss', 'postcss', 'autoprefixer'],
  );

  await Process.run(
    'pnpm',
    ['exec', 'tailwindcss', 'init'],
  );

  context.logger.success('🌬️ tailwind installed successfully 🚀');
}
