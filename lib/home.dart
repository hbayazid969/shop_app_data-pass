import 'package:flutter/material.dart';
import 'package:xm/model.dart';
import 'package:xm/productdemo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color c = Color.fromARGB(255, 255, 227, 225);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.only(left: 12, top: 12, bottom: 12),
          decoration: BoxDecoration(
            color: c,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Icon(
              (Icons.arrow_back_ios),
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi-fi shop",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Audio Shop on Elephant Road 12",
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  "The shop offers both products and Services",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Text(
              "Products All",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              "Show all",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Productdemo(
                                    img: myList[index].img,
                                    name: myList[index].name,
                                    description: myList[index].description,
                                    price: myList[index].price,
                                  )));
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 12, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.network(
                              "${myList[index].img}",
                              height: 80,
                              width: 110,
                            ),
                          ),
                          Text(
                            " ${myList[index].name}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            " ${myList[index].description}",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            " ${myList[index].price}",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          ListTile(
            leading: Text(
              "Accresories",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            trailing: Text("Show all",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Productdemo(
                                    img: myList[index].img,
                                    name: myList[index].name,
                                    description: myList[index].description,
                                    price: myList[index].price,
                                  )));
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.network(
                              "${myaList[index].img}",
                              height: 80,
                              width: 110,
                            ),
                          ),
                          Text(
                            " ${myaList[index].name}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            " ${myaList[index].description}",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            " ${myaList[index].price}",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
