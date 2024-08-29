import 'package:flutter/material.dart';
import 'package:jjbt/model/buah_model.dart';
import 'package:jjbt/screen/detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jenis-jenis Buah Tropis"),
        centerTitle: true,
      ),
      body: LayoutBuilder(
  builder: (context, BoxConstraints constraints) {
    if (constraints.maxWidth <= 550) {
      return HpScreen();
    } else if (constraints.maxWidth < 700) {
      return WebScreen(crossAxisCount: 2);
    } else if (constraints.maxWidth < 1000) {
      return WebScreen(crossAxisCount: 3);
    } else if (constraints.maxWidth < 1200) {
      return WebScreen(crossAxisCount: 4);
    } else {
      return WebScreen(crossAxisCount: 5);
    }
  },
)
    );
  }
}

class HpScreen extends StatelessWidget {
  const HpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: buahModelList.length,
      itemBuilder: (context, index) {
        final BuahModel buah = buahModelList[index];
        return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(buah: buah,)));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: Image.asset(buah.imageAsset)
                    ),
                  ),
                Expanded(
                  flex: 2,
                  child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        buah.name,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      Text(buah.location)
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      );
      },
    );
  }
}

class WebScreen extends StatelessWidget {
  final int crossAxisCount;
  const WebScreen({required this.crossAxisCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: crossAxisCount,
        children: buahModelList.map((buah)=>  InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(buah: buah,)),);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8)
                    ),
                    child: Image.asset(
                      buah.imageAsset,
                      fit:  BoxFit.cover,
                      // width: double.infinity,
                      // height: double.infinity,
                      ))
                  ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        buah.name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox( height: 2,),
                      Text(
                        buah.location,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
      ).toList()  ,
        ),
      );
  }
}