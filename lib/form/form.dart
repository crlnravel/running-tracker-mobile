import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormWidgetState();
  }
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _distance = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Judul Lari",
                    labelText: "Judul Lari",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onChanged: (String? value) {
                  setState(() {
                    _judul = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Judul lari tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Jarak',
                    labelText: 'Jarak',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onChanged: (String? value) {
                  setState(() {
                    _distance = int.tryParse(value!) ?? 0;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Jarak tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null) {
                    return "Jarak harus berupa angka!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Deskripsi lari',
                    labelText: 'Deskripsi lari',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                onChanged: (String? value) {
                  setState(() {
                    _description = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Deskripsi tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: const Text("Data baru telah ditambahkan!"),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Judul: $_judul'),
                                Text('Jarak: $_distance'),
                                Text('Deskripsi: $_description'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text("OK?"),
                              onPressed: () {
                                Navigator.pop(context);
                                _formKey.currentState!.reset();
                              },
                            )
                          ],
                        );
                      });
                    }
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
