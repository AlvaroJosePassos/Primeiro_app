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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Você apertou o botão essa quantidade de vezes: ',
                textScaleFactor: 1.1,
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
                textScaleFactor: 0.7,
              ),
            ],
          ),
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
