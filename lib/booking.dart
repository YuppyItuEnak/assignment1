import 'package:assignment1/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final _bookingkey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlName = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey[700],
        padding: EdgeInsets.all(16),
        child: Form(
            key: _bookingkey,
            child: Column(
              children: [
                TextFormField(
                  controller: ctrlName,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.person),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama Tidak Boleh Kosong";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: ctrlEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.email),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email Tidak Boleh Kosong";
                    }
                    return !EmailValidator.validate(value.toString())
                        ? 'Email tidak valid'
                        : null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: ctrlPhone,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.phone),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nomer Hp Tidak Boleh Kosong";
                    }else if (value.length < 8 || value.length > 13) {
                      return "Nomor telepon paling tidak terdiri dari 8 - 13 digit";
                    }
                    return null;
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: ctrlCity,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    labelText: 'City',
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.location_city),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Kota Tidak Boleh Kosong";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    if(_bookingkey.currentState!.validate() == true){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Booking Confirmation"),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: [
                                  Text('Nama: ${ctrlName.text}'),
                                  Text('Email: ${ctrlEmail.text}'),
                                  Text('Nomer HP: ${ctrlPhone.text}'),
                                  Text('Nama Kota: ${ctrlCity.text}'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                              ),
                            ],
                          );
                        });
                    }else{
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Booking Confirmation"),
                            content: SingleChildScrollView(
                              child: Text("Please Fill The Field")
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                              ),
                            ],
                          );
                        });
                    }
                    
                    // Fluttertoast.showToast(msg: "Email: ${ctrlEmail.text} & Password: ${ctrlpass.text}",
                    // backgroundColor: Colors.orange
                    // );
                  },
                  icon: Icon(Icons.check),
                  label: Text("Submit"),
                  style: ElevatedButton.styleFrom(
                      elevation: 2,
                      padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                      backgroundColor: Colors.blue[700],
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            )),
      ),
    );
  }
}
