import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  
  static const name ='ui_controls_screen';
  
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation{car, plane, boat, submarine}

class _UiControlsViewState extends State<_UiControlsView> {
  
  bool isDeveloper = true;
  Transportation selectedtransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsdinner = false;
  
  
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles Adicionales'),
          value: isDeveloper, 
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedtransportation'),
          children: [
            
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar en coche'),
              value: Transportation.car, 
              groupValue: selectedtransportation, 
              onChanged: (value) => setState(() {
              selectedtransportation = Transportation.car;
              }),
            ),
        
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar en barco'),
              value: Transportation.boat, 
              groupValue: selectedtransportation, 
              onChanged: (value) => setState(() {
                selectedtransportation = Transportation.boat;
              }),
            ),
        
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar en avión'),
              value: Transportation.plane, 
              groupValue: selectedtransportation, 
              onChanged: (value) => setState(() {
                selectedtransportation = Transportation.plane;
              }),
            ),
        
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar en submarino'),
              value: Transportation.submarine, 
              groupValue: selectedtransportation, 
              onChanged: (value) => setState(() {
                selectedtransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
      
        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ), 
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),     
        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsdinner, 
          onChanged: (value) => setState(() {
            wantsdinner = !wantsdinner;
          }),
        )      
 
      ],
    );
  }
}

