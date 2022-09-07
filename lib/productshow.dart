import 'package:flutter/material.dart';

class Productshow extends StatefulWidget {
  Productshow({Key? key, this.description, this.img, this.name, this.price})
      : super(key: key);

  String? img;
  String? name;
  String? description;
  double? price;
  @override
  State<Productshow> createState() => _ProductshowState();
}

class _ProductshowState extends State<Productshow> {
  Color c = Color.fromARGB(255, 255, 227, 225);
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Order Details",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
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
              child: Icon(
                (Icons.arrow_back_ios),
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                "MyCart",
                style: TextStyle(fontSize: 19),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              leading: Image.network("${widget.img}"),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${widget.name}"),
                  Text("${widget.price}"),
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                i--;
                              });
                            },
                            icon: Icon(Icons.remove)),
                      ),
                      Container(
                        width: 30,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13, left: 10),
                          child: Text("$i"),
                        ),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                i++;
                              });
                            },
                            icon: Icon(Icons.add)),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Icon(Icons.delete),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 14),
              child: Text(
                "Delivery Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text("Link Road , Badda"),
                subtitle: Text("Gulshan - 1212"),
                trailing: Icon(Icons.arrow_right),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 14),
              child: Text(
                "Payment Method",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text("Visa Card"),
                subtitle: Text("visa****1243"),
                trailing: Icon(Icons.arrow_right),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 14),
              child: Text("Order info"),
            ),
            ListTile(
              leading: Text("subtotal"),
              trailing: Text("\$ ${((widget.price)! * i)}"),
            ),
            ListTile(
              leading: Text("cost"),
              trailing: Text("\$ 10.00"),
            ),
            ListTile(
              leading: Text("total"),
              trailing: Text("\$ ${((widget.price)! * i + 10.00)}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 12, bottom: 10),
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                    child: Text(
                  "Checkout \$ ${((widget.price)! * i + 10.00)}",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
