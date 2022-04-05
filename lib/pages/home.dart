import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildSearchInput(),
          _buildCategoryChips(),
          _buildProducts()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'My Cart',
        child: const Icon(Icons.shopping_bag),
      ),
    );
  }

  Expanded _buildProducts() {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
            6,
            (index) => Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            //TODO serverside data
                              image: NetworkImage(
                                  "https://unsplash.com/photos/fczCr7MdE7U/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8NXx8YmFuYW5hfGVufDB8fHx8MTY0OTA0NDkzNw&force=true"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black38,
                                blurRadius: 6,
                                spreadRadius: 3)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: const BorderRadius.vertical(
                                    bottom: Radius.circular(20))),
                            padding: const EdgeInsets.all(8),
                            child: Column(children: [
                              //TODO serverside data
                               ListTile(
                                title: Text("Banana"),
                                subtitle: Text("33000T"),
                                trailing: Text("available"),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: IconButton(
                              onPressed: () {
                                //TODO add to cart
                              },
                              iconSize: 24,
                              icon: const Icon(Icons.add)),
                        ),
                      ),
                    )
                  ],
                )),
      ),
    ));
  }

  Wrap _buildCategoryChips() {
    return Wrap(
      //TODO serverside data
      children: [
        Padding(
            padding: const EdgeInsets.all(12),
            child: ChoiceChip(
              label: const Text("Fruits"),
              selected: false,
              onSelected: (bool selected) {
                //TODO categorize
              },
            )),
        Padding(
            padding: const EdgeInsets.all(12),
            child: ChoiceChip(
              label: const Text("Fruits"),
              selected: false,
              onSelected: (bool selected) {
                //TODO categorize
              },
            )),
        Padding(
            padding: const EdgeInsets.all(12),
            child: ChoiceChip(
              label: const Text("Fruits"),
              selected: false,
              onSelected: (bool selected) {
                //TODO categorize
              },
            )),
        Padding(
            padding: const EdgeInsets.all(12),
            child: ChoiceChip(
              label: const Text("Fruits"),
              selected: false,
              onSelected: (bool selected) {
                //TODO categorize
              },
            ))
      ],
    );
  }

  Padding _buildSearchInput() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        bottom: 20,
        right: 20,
        left: 20,
      ),
      child: TextField(
        onSubmitted: (value) {
          //TODO search
        },
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
