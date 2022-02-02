import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class minhaHome extends StatefulWidget {
  const minhaHome({Key? key}) : super(key: key);

  @override
  _minhaHomeState createState() => _minhaHomeState();
}

class _minhaHomeState extends State<minhaHome> {

  int numero = 0;

  void entrou (){
    setState(() {
      numero++;
    });

  }

  void saiu() {
    setState(() {
      numero--;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.deepPurpleAccent,
         centerTitle: true,
         title: const Text('Controle', style: TextStyle(),
         ),
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Pode entrar!", style: TextStyle(fontSize: 30),),
           Padding(padding: EdgeInsets.all(20),
            child: Text("$numero", style: TextStyle(fontSize: 30),),
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextButton(
                 style: TextButton.styleFrom(
                   primary: Colors.white,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15)
                     ),
                   backgroundColor: Colors.deepPurpleAccent,
                   fixedSize: Size(100, 40)
                 ),
                 onPressed: entrou,
                   child: Text("Entrou", style: TextStyle(color: Colors.white),)),
               SizedBox(height: 0,width: 5,),
               TextButton(
                   style: TextButton.styleFrom(
                       primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                       backgroundColor: numero!=0 ? Colors.deepPurpleAccent : Colors.white.withAlpha(8),

                       fixedSize: Size(100, 40),

                   ),
                 onPressed:numero!=0 ? saiu:null,
                   child: Text("Saiu",  style:  numero!=0 ? TextStyle(color: Colors.white) : TextStyle(color: Colors.deepPurpleAccent),)),
             ],
           ),

         ],
       ),
    );
  }

}