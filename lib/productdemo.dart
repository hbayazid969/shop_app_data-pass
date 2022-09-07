import 'package:flutter/material.dart';
import 'package:xm/productshow.dart';

class Productdemo extends StatefulWidget {
  Productdemo({Key? key, this.description, this.img, this.name, this.price})
      : super(key: key);

  String? img;
  String? name;
  String? description;
  double? price;
  @override
  State<Productdemo> createState() => _ProductdemoState();
}

class _ProductdemoState extends State<Productdemo> {
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
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  (Icons.arrow_back_ios),
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Image.network(
                "${widget.img}",
                height: 100,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 4,
                    width: 200,
                    color: Color.fromARGB(255, 243, 214, 214),
                  ),
                ),
                Positioned(
                  left: 90,
                  child: Container(
                    height: 4,
                    width: 70,
                    color: Color.fromARGB(255, 56, 59, 56),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.shopping_cart),
                SizedBox(
                  width: 10,
                ),
                Text("Shopping"),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text("${widget.name}"),
              ),
              subtitle: Text("${widget.description}"),
              trailing: Icon(Icons.shopping_cart),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text("Product Location"),
              subtitle: Text("Road-12"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25),
              child: Text(" \$ ${widget.price}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 7),
              child: Text(
                "This is Reasonable Price",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Productshow(
                                name: widget.name,
                                description: widget.description,
                                img: widget.img,
                                price: widget.price,
                              )));
                },
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
