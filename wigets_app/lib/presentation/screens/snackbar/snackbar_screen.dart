import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  
  static const name ='snackbar_screen';
  
  const SnackbarScreen({super.key});
  
  void showCustomSnackBar (BuildContext context){
    
        ScaffoldMessenger.of(context).clearSnackBars();
            
    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
    
  }
  void openDialog(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás Seguro?'),
        content: const Text('Reprehenderit sit occaecat nostrud sint. Fugiat pariatur sit dolor laboris aliquip eiusmod nulla. Dolore irure dolore sit mollit dolore pariatur officia ex do nostrud cillum aute.'),
        actions: [
          TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar')),
          
          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar'))
        ],
      )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      
      
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Proident exercitation velit amet nostrud mollit fugiat esse nisi minim. Sit nostrud anim ut sit irure voluptate esse. Labore occaecat voluptate veniam ut ut velit proident veniam est sit cupidatat dolore anim eiusmod. Laborum elit adipisicing pariatur non nostrud sint id aute Lorem magna in ut incididunt voluptate. Duis culpa dolor qui incididunt. Elit laboris eiusmod ad voluptate ea nulla occaecat culpa magna commodo nostrud.')
                  ]                  
                  );
              }, child: const Text ('Licencias usadas')),
              
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text ('Mostrar diálogo'))
          ],
        )
      ),
      
      
      
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}