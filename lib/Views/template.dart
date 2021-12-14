import 'package:flutter/material.dart';
import 'templateList.dart';

class Template extends StatefulWidget {
  const Template({Key? key}) : super(key: key);

  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {


  @override
  Widget build(BuildContext context) {

    return Container(
      child: DefaultTabController(
        length: 8,
        child: Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            onPressed: ()=>{},
            label: Text("Next"),

          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: const TabBar(
              isScrollable: true,
              labelColor: Colors.black54,
              indicatorColor: Colors.black54,
              tabs: [
                Tab( text: "Wood", ),
                Tab(text: "Beams",),
                Tab(text: "Tubes",),
                Tab(text: "Bottles",),
                Tab(text: "Layers",),
                Tab( text: "Metals", ),
                Tab(text: "Pharma",),
                Tab(text: "Misc",)
              ],
            ),
            title: const Text('Select a Template:', style: TextStyle(color: Colors.black87),),
          ),
          body: const TabBarView(
            children: [
              TemplateList(cat: "Wood",),
              TemplateList(cat: "Beams",),
              TemplateList(cat: "Tubes",),
              TemplateList(cat: "Bottles",),
              TemplateList(cat: "Layers",),
              TemplateList(cat: "Metals",),
              TemplateList(cat: "Pharma",),
              TemplateList(cat: "Misc",)
            ],
          ),
        ),
      ),
    );
    // return Container(
    //   alignment: Alignment.topLeft,
    //   child: Column(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.only(top: 10, left: 20),
    //         child: Text("Select a Template: ", style: TextStyle(fontSize: 26),),
    //       ),
    //
    //     ],
    //   ),
    // );
  }
}
