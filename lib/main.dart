import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      const MaterialApp(
        home:  mandao(),
      )
  );
}
class mandao extends StatefulWidget {
  const mandao({Key? key}) : super(key: key);

  @override
  _mandaoState createState() => _mandaoState();
}

class _mandaoState extends State<mandao> {
  int subtrair = 10;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('i love will'),
        ),
        body: Center(
         child: Text('Numero de vezes: '+subtrair.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(subtrair > 0){
                  subtrair--;
              }
            });
          },
          child: const Icon(Icons.remove),
        ),
      ),
    );
  }
}
