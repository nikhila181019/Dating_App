import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  final TextEditingController _searchController = TextEditingController();
  int index = 0;


  final Map<int, String> names = {
    0: "Nikhil Agarwal",
    1: "John Doe",
    2: "Jane Smith",
    3: "Alice Johnson",
    4: "Bob Brown",
  };

  List<int> filteredIndices = [];

  @override
  void initState() {
    super.initState();
    filteredIndices = names.keys.toList();
  }

  void _filterSearchResults(String query) {
    List<int> _filteredIndices = [];
    // Filter indices based on search query
    for (int index in names.keys) {
      if (names[index]!.toLowerCase().contains(query.toLowerCase())) {
        _filteredIndices.add(index);
      }
    }
    setState(() {
      filteredIndices = _filteredIndices;
    });
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.favorite, size: 40),
      Icon(Icons.search, size: 40),
      Icon(Icons.person, size: 40),
    ];
    return Scaffold(

        backgroundColor: Colors.deepPurple[200],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.deepPurple[200],
          items: items,
          height: 70,
          index: index,
          onTap: (index) => setState(() => this.index = index),
        ),
        body: index == 0
            ? Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  title: Center(
                    child: Text(
                      "Matches",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                body: PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(

                            onTap: (){
                              Navigator.pushNamed(context, "PersonalDetails");
                            },
                            child: Container(
                              height: 550,
                              width: 500,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/fifth.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(22, 450, 0, 0),
                                child: Text(
                                  names[index]!, // Fetch name from the map
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            : index == 1
                ? Scaffold(
                    appBar: AppBar(
                      automaticallyImplyLeading: false,
                      backgroundColor: Colors.transparent,
                      title: Center(
                        child: Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 22, 10, 0),
                          child: TextField(
                            controller: _searchController,
                            onChanged: _filterSearchResults,
                            decoration: InputDecoration(
                              hintText: "Search",
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              filled: true,
                              fillColor: Colors.grey,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        if (_searchController.text.isNotEmpty)
                          Expanded(
                            child: ListView.builder(
                              itemCount: filteredIndices.length,
                              itemBuilder: (BuildContext context, int index) {
                                final int currentIndex = filteredIndices[index];
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context, "PersonalDetails");
                                    },
                                    child: Container(
                                      height: 300,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/fifth.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 235, 0, 0),
                                        child: Text(
                                          names[currentIndex]!,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 27,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                      ],
                    ),
                  )
                : index == 2
                    ? Scaffold(
                        appBar: AppBar(
                          automaticallyImplyLeading: false,
                          backgroundColor: Colors.transparent,
                          title: Center(
                              child: Text(
                            "Profile",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        body: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(127, 30, 100, 0),
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/fifth.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(80),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 20, 0),
                              child: Text(
                                "Nikhil Agarwal",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                            Text(
                              "25",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Male",
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Container(
                                          child: Text(
                                            "About",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: Text(
                                            "Hello! My name is Nikhil Agarwal and I am from Mount Abu, Rajasthan. I am currently a third-year student pursuing a degree in Computer Science and Engineering. As a developer, I specialize in Android and Flutter development and have created several mobile applications for both Android and iOS platforms using the Flutter framework.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Recent Photos",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 100,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/fifth.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                              SizedBox(
                                                width: 13,
                                              ),
                                              Container(
                                                height: 100,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/fifth.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                              SizedBox(
                                                width: 13,
                                              ),
                                              Container(
                                                height: 100,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/fifth.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                              SizedBox(
                                                width: 13,
                                              ),
                                              Container(
                                                height: 100,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/fifth.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : Container() // replace this with the widget you want to display when index is not 0

        );
  }
}
