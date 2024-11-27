
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text('Widget Tree Demo'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
        flexibleSpace: const SafeArea(
            child: Icon(
          Icons.photo_camera,
          size: 100.0,
          color: Colors.lightGreen,
        )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      color: Colors.amberAccent,
                      width: 60.0,
                      height: 60.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.lightBlue,
                        width: 60.0,
                        height: 60.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                    Container(
                      color: Colors.yellow,
                      width: 60.0,
                      height: 60.0,
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.red,
                  thickness: 3.0,
                ),
                Container(
                  color: Colors.brown,
                  width: 60.0,
                  height: 60.0,
                ),
                const Divider(
                  color: Colors.red,
                  thickness: 3.0,
                ),
                const Text(
                  'Mobile App Dvt (CS468)',
                  style: TextStyle(
                    fontSize: 44.0,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blueGrey,
                    decorationStyle: TextDecorationStyle.wavy,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 4,
                ),
                RichText(
                  text: const TextSpan(
                    text: '2102B Section ',
                    style: TextStyle(
                      fontSize: 44.0,
                      color: Colors.deepOrange,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.deepPurple,
                      decorationStyle: TextDecorationStyle.dotted,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' room 302 ',
                      ),
                      TextSpan(
                        text: ' Tuhrsday and Friday ',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 5.0,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Save'),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child:
                          const Icon(Icons.airline_seat_recline_normal_sharp),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.flight),
                      tooltip: 'Book your flight',
                      iconSize: 60.0,
                    )
                  ],
                ),
                const Divider(
                  thickness: 5.0,
                  color: Colors.black,
                ),
                const Popup(),
                const Divider(
                  thickness: 3.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: const AssetImage("lib/images/logo.jpeg"),
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Image.network(
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.rBk19h_qlexuFjPZVxMnOgHaEK%26pid%3DApi&f=1&ipt=ccde4287f0e43091f29ca5110c10b742f7c4e73cf72d3506932a3a4b4918fca5&ipo=images',
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    const Icon(
                      Icons.add_to_photos,
                      color: Colors.orange,
                      size: 80.0,
                    )
                  ],
                ),
                const Divider(
                  thickness: 3.0,
                ),
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24.0)),
                      color: Colors.amber,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 10.0),
                        )
                      ]),
                ),
                const Divider(thickness: 3.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 30.0,
                      ),
                      decoration: const InputDecoration(
                        labelText: "Comments",
                        labelStyle: TextStyle(color: Colors.purpleAccent),
                        border: OutlineInputBorder(),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightGreen.shade100,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

class Todo {
  final String title;
  final Icon icon;
  Todo({required this.title, required this.icon});
  static List<Todo> list = [
    Todo(title: 'Fast Food', icon: const Icon(Icons.fastfood)),
    Todo(title: 'Remind Me', icon: const Icon(Icons.access_alarm)),
    Todo(title: 'Flight', icon: const Icon(Icons.flight)),
    Todo(title: 'Music', icon: const Icon(Icons.audiotrack)),
  ];
}

class Popup extends StatelessWidget implements PreferredSizeWidget {
  const Popup({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<Todo>(
            icon: const Icon(Icons.view_list),
            onSelected: ((valueSelected) {
              print('Value selected: ${valueSelected.title}');
            }),
            itemBuilder: (BuildContext context) {
              return Todo.list.map((e) {
                return PopupMenuItem(
                  value: e,
                  child: Row(
                    children: [
                      Icon(e.icon.icon),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Text(e.title),
                    ],
                  ),
                );
              }).toList();
            }),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
