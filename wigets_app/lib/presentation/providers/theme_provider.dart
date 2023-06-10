import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wigets_app/config/theme/app_theme.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);

//Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, Apptheme>(
  (ref) => ThemeNotifier(),
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier <Apptheme> {
  //state = estado = new Apptheme()
  ThemeNotifier(): super (Apptheme());
  
  void toggleDarkmode(){
    state = state.copyWith(isDarkmode : !state.isDarkmode);
  }
  
  void changeColorIndex(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }
  
}

