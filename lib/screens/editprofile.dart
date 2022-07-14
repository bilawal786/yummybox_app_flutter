import 'package:flutter/material.dart';
import 'package:yummy_box/widgets/drawer.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  String? valueChoose;
  List listItem = [
    "Guadeloupe",
    "Martinique",
    "Guyane",
    "La Reunion",
    "Saint-Martin",
    "Colombie",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Editor mon Profil",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
             child: Column(
               children: [
                 Container(
                   height: 150,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: Color.fromARGB(255, 196, 42, 97),
                   ),

                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Container(
                           width: 90,
                           child: Stack(
                             children: [
                               Container(
                                 width: 90,
                                 height: 90,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.pink.shade100,
                                 ),
                                 child: ClipRRect(
                                   borderRadius:
                                   BorderRadius.circular(50),
                                   child: Image.asset("assets/user.png",
                                     fit: BoxFit.cover,
                                   ),
                                 )

                               ),
                               Positioned(
                                 right: 0,
                                 bottom: 0,
                                 child: Container(
                                   height: 30,
                                   width: 30,
                                   padding: const EdgeInsets.all(0.0),
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.white,
                                   ),
                                   child: IconButton(
                                     padding: const EdgeInsets.all(0.0),
                                     onPressed: (){},
                                     color: Colors.pink.shade100,
                                     icon: Icon(
                                       Icons.camera,
                                       size: 20,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: Text("Muhammad Here!", style: TextStyle(
                             fontSize: 15,
                             color: Colors.white,
                           ),),
                         ),
                       ],

                     ),
                   ),

                 ),
                 SizedBox(
                   height: 10,
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Row(
                     children: [
                       Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.green.shade600,
                         ),
                           height: 25,
                           width: 25,

                           child: Icon(Icons.person, color: Colors.white,)
                       ),
                       SizedBox(
                         width: 5,
                       ),
                       Text('Prenom', style: TextStyle(
                         fontWeight: FontWeight.bold,
                       ),),
                     ],
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: TextFormField(
                     style: TextStyle(
                       fontSize: 12,
                     ),
                     decoration: const InputDecoration(
                       isDense: true,
                         contentPadding: EdgeInsets.all(12),
                         enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.blueGrey,
                             )),
                         focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.blueGrey,
                             )),
                         hintText: 'Prenom',
                         labelText: '',
                          ),
                   ),
                 ),

                 SizedBox(
                   height: 10,
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Row(
                     children: [
                       Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.green.shade600,
                         ),
                           height: 25,
                           width: 25,

                           child: Icon(Icons.person, color: Colors.white,)
                       ),
                       SizedBox(
                         width: 5,
                       ),
                       Text('Nom', style: TextStyle(
                         fontWeight: FontWeight.bold,
                       ),
                       ),
                     ],
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: TextFormField(
                     style: TextStyle(
                       fontSize: 12,
                     ),
                     decoration: const InputDecoration(
                       isDense: true,
                       contentPadding: EdgeInsets.all(12),
                       enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           )),
                       focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           )),
                       hintText: 'Nom',
                       labelText: '',
                     ),
                   ),
                 ),

                 SizedBox(
                   height: 10,
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Row(
                     children: [
                       Container(
                           height : 25,
                           width: 25,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.green.shade600,
                         ),



                           child: Icon(Icons.call, color: Colors.white,)
                       ),
                       SizedBox(
                         width: 5,
                       ),
                       Text('Telephone', style: TextStyle(
                         fontWeight: FontWeight.bold,
                       ),
                       ),
                     ],
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: TextFormField(
                     style: TextStyle(
                       fontSize: 12,
                     ),
                     decoration: const InputDecoration(
                       isDense: true,
                       contentPadding: EdgeInsets.all(12),
                       enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           )),
                       focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           )),
                       hintText: 'Telephone',
                       labelText: '',
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 10,
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Row(
                     children: [
                       Container(
                           height : 25,
                           width: 25,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: Colors.green.shade600,
                           ),
                           child: Icon(Icons.email_outlined, color: Colors.white,)),
                       SizedBox(
                         width: 5,
                       ),
                       Text('Address E-mail', style: TextStyle(
                         fontWeight: FontWeight.bold,
                       ),
                       ),
                     ],
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: TextFormField(
                     style: TextStyle(
                       fontSize: 12,
                     ),
                     decoration: const InputDecoration(
                       isDense: true,
                       contentPadding: EdgeInsets.all(12),
                       enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           )),
                       focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           )),
                       hintText: 'Email',
                       labelText: '',
                     ),
                   ),
                 ),

                 SizedBox(
                   height: 10,
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Row(
                     children: [
                       Container(
                           height: 25,
                           width: 25,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: Colors.green.shade600,
                           ),

                           child: Icon(Icons.email_outlined, color: Colors.white,)),
                       SizedBox(
                         width: 5,
                       ),
                       Text('Region', style: TextStyle(
                         fontWeight: FontWeight.bold,
                       ),
                       ),
                     ],
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
                         padding: const EdgeInsets.only(left: 15),
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
                       items: listItem.map((valueItem) {
                         return DropdownMenuItem(
                           value: valueItem,
                           child: Text(valueItem),
                         );
                       }).toList(),
                       isExpanded: true,
                       underline: const SizedBox(),
                       isDense: true,
                     ),
                   ),
                 ),

                 SizedBox(
                   height: 10,
                 ),

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     onPressed: () {

                     },
                     style: ElevatedButton.styleFrom(
                       primary: Colors.green,
                       padding: EdgeInsets.all(10.40),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           "Sauvegarder",
                           textAlign: TextAlign.center,
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
          ),
        ),
      ),
    );
  }
}
