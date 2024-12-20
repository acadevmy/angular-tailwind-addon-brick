import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  await updateStyleFile(context: context);
}

Future<void> updateStyleFile({required HookContext context}) async {
  final file = File("src/styles.scss");
  String originalContent = await file.readAsString();

  String tailwindImport = '@use "../src/assets/scss/tailwind.scss";';
  String newContent = tailwindImport + '\n' + originalContent;

  await file.writeAsString(newContent);

  context.logger.success('🌬️ Tailwind configured successfully 🚀');
}
