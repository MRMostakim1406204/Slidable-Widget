import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

   void doNothing (BuildContext context){}

    return Scaffold(
      appBar: AppBar(
        title: Text("Slidable Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Slidable(
          key: ValueKey(0),
          startActionPane: ActionPane(
            dismissible: DismissiblePane(onDismissed: (){}),
            motion: ScrollMotion(), 
            children: [
              SlidableAction(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                onPressed: doNothing,
              label: "Delete",
              icon: Icons.delete,),

              SlidableAction(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                onPressed: doNothing,
              label: "Share",
              icon: Icons.share,)
            ]),

            endActionPane: ActionPane(
              dismissible: DismissiblePane(onDismissed: (){}),
              motion: ScrollMotion(),
               children: [
                SlidableAction(
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                onPressed: doNothing,
              label: "Save",
              icon: Icons.save,),

              SlidableAction(
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.white,
                onPressed: doNothing,
              label: "person",
              icon: Icons.person,)
               ]),
          child: ListTile(
          title: Text("Click Here"),
        )),
      ),
    );
  }
}