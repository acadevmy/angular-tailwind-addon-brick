import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  await updateStyleFile(context: context);
}

Future<void> updateStyleFile({required HookContext context}) async {
  await await Process.run(
    'sed',
    ['-i', "'1s/^/@import tailwind;\n/'", 'src/styles.scss'],
  );
}
