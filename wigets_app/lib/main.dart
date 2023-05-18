import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wigets_app/config/router/app_router.dart';
import 'package:wigets_app/config/theme/app_theme.dart';
import 'package:wigets_app/presentation/providers/theme_provider.dart';


void main() {
  runApp(
    const ProviderScope(
      child: MainApp()
      )  
    );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    
    final isDarkmode = ref.watch(isDarkmodeProvider);
    final selectedColor = ref.watch(selectedColorProvider);
    
    return MaterialApp.router(
      title:'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: Apptheme(selectedColor: selectedColor, isDarkmode: isDarkmode).getTheme(),
    );
  }
}
