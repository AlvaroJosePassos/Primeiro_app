import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Meu App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(title: 'Pagina Inicial'),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          title: Text(widget.title),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Álvaro'),
                accountEmail: Text('alvaro@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/grimm.png'),
                ),
              ),
              ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Pagina Inicial'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              const Divider(color: Colors.purple),
              ListTile(
                  leading: const Icon(Icons.account_balance_wallet),
                  title: const Text('Saldo'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              const Divider(color: Colors.purple),
              ListTile(
                  leading: const Icon(Icons.list_alt_rounded),
                  title: const Text('Extrato'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              const Divider(color: Colors.purple),
              ListTile(
                  leading: const Icon(Icons.payments_outlined),
                  title: const Text('Pagamento'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              const Divider(color: Colors.purple),
            ],
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                )
              ],
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.green,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.brown,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Pagina Inicial',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configuração',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          backgroundColor: Colors.purple,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      );
}

/*class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: Colors.purple,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(12),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const MyApp(),
              )),
            ),
            const Divider(color: Colors.purple),
            ListTile(
              leading: const Icon(Icons.account_balance_wallet),
              title: const Text('Saldo'),
              onTap: () {},
            ),
            const Divider(color: Colors.purple),
            ListTile(
              leading: const Icon(Icons.list_alt_rounded),
              title: const Text('Extrato'),
              onTap: () {},
            ),
            const Divider(color: Colors.purple),
            ListTile(
              leading: const Icon(Icons.payments_outlined),
              title: const Text('Pagamentos'),
              onTap: () {},
            ),
            const Divider(color: Colors.purple),
          ],
        ),
      );
}*/
