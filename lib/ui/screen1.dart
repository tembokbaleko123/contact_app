import 'package:flutter/material.dart';
import 'package:kontak/logic/map_to_list.dart';
import 'package:kontak/ux/list_nomer_screen1.dart';
import 'package:kontak/ui/screen2.dart';

class Kontak extends StatefulWidget {
  const Kontak({super.key});

  @override
  State<Kontak> createState() => _KontakState();
}

class _KontakState extends State<Kontak> {
  final MapToList _mapToList = MapToList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TambahKontak(
                          mapToList: _mapToList,
                        )));
            setState(
                () {}); //setState disini untuk menampilkan input yang diambil dari screen2 Navigator.pop
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.add_ic_call_outlined),
        ),
        appBar: AppBar(
          title: Text('Kontak'),
        ),
        body: ListView.builder(
            itemCount: _mapToList.getKontakList().length,
            itemBuilder: (context, index) {
              final kontak = _mapToList.getKontakList()[index];
              return Kartu(
                nama: kontak['Nama'],
                noTelp: kontak['No_telp'],
                tekan: () {
                  setState(() {
                    //setState disini agar ui-nya bisa terhapus
                    _mapToList.hapusKontak(index);
                    print(index);
                  });
                },
              );
            }));
  }
}
