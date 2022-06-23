import 'package:flutter/material.dart';
import 'package:yummy_box/widgets/drawer.dart';

class MySuggest extends StatefulWidget {
  const MySuggest({Key? key}) : super(key: key);

  @override
  State<MySuggest> createState() => _MySuggestState();
}

class _MySuggestState extends State<MySuggest> {

  String? valueChoose;
  List listItem = [
    "An app user",
    "A trade representative",
  ];

    List _IsList = [
    "Grocery Store",
    "A bakery",
    "Catering",
    "A restaurant",
    "A butcher shop",
    "A scoop",
    "A supermarket",
    "Others",
  ];

    List _DepList = [
      "Guadeloupe",
      "Martinique",
      "Guyana",
      "The Meeting",
      "||e-de-France",
      "Saint-Martin",
      "Others"
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)
            ),

            SizedBox(
              width: 30,
            ),
            Text(
              "Suggerer un commerce",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),
            ),
          ],
        ),
      ),

      endDrawer: MyDrawer(),

      body: SingleChildScrollView(
        child:
        Card(
          margin: const EdgeInsets.all(5),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                     padding: const EdgeInsets.only(top: 10, left: 5),
                    child: Text('Are you?', style: TextStyle(
                      color: Colors.blueGrey,
                    ),),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.blueGrey)),
                    child: DropdownButton(
                      hint: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "An app user",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue as String?;
                        });
                      },
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                      isExpanded: true,
                      underline: const SizedBox(),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 18,
                      width: double.infinity,
                      child: Text("What is the name of business?", style: TextStyle(
                        color: Colors.blueGrey,
                      ),)
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )),
                        hintText: '',
                        labelText: '',
                        iconColor: Colors.white),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 18,
                    width: double.infinity,
                    child: Text("Is it?", style: TextStyle(
                      color: Colors.blueGrey,
                    ),),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.blueGrey)),
                    child: DropdownButton(
                      hint: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Grocery Store",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue as String?;
                        });
                      },
                      items: _IsList.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                      isExpanded: true,
                      underline: const SizedBox(),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 18,
                    width: double.infinity,
                    child: Text("What department is it is?", style: TextStyle(
                      color: Colors.blueGrey,
                    ),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.blueGrey)),
                    child: DropdownButton(
                      hint: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Guadeloupe",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue as String?;
                        });
                      },
                      items: _DepList.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                      isExpanded: true,
                      underline: const SizedBox(),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                      height: 18,
                      width: double.infinity,
                      child: Text("What address is the business located at?", style: TextStyle(
                        color: Colors.blueGrey,
                      ),)
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )),
                        hintText: '',
                        labelText: '',
                        iconColor: Colors.white),
                  ),
                ),



                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                      height: 18,
                      width: double.infinity,
                      child: Text("What is the business phone number?", style: TextStyle(
                        color: Colors.blueGrey,
                      ),)
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )),
                        hintText: '',
                        labelText: '',
                        iconColor: Colors.white),
                  ),
                ),



                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                      height: 18,
                      width: double.infinity,
                      child: Text("Is there an email to contact a represerntative?", style: TextStyle(
                        color: Colors.blueGrey,
                      ),)
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )),
                        hintText: '',
                        labelText: '',
                        iconColor: Colors.white),
                  ),
                ),

               SizedBox(
                 height: 15,
               ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        onPressed: (){},
                          child: Text(
                            "Send", style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),

      ),


    );

  }
}
