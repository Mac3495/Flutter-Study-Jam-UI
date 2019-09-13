//En Flutter el primer paso siempre es importar las bibliotecas que se usarán
//En este caso llamamos a la biblioteca de material.dart la cual no permitirá
//utilizar los widgets de Material Design
import 'package:flutter/material.dart';

//El método 'main' en la clase main.dart no permite inicializar una aplicación
void main() => runApp(MyApp());

//Creamos la clase MyApp la cual hereda de StatelessWidget, Esta clase nos
//permitirá instanciar el Scafoold (Linea )
class MyApp extends StatelessWidget {

  //Este widget nos permite reutilizar el estilo de un texto para no tener que
  //escribirlo una y otra vez, así mismo recibe un parametro
  Widget textoPrincipal(String text){
    //Se retorna un Widget de tipo texto
    return Text(
      //Se define caul será el contenido de este widget Text
      text,
      //Se define el estilo que tendrá nuestro widget Text
      style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w400
      ),
    );
  }

  //De igual manera este widget nos permitirá reutilizar código para no tenerlo
  //que escribir una y otra vez
  Widget componenteUno(String name){
    //En este caso el widget retorna una columna
    return Column(
      //Acá se instancian los widgets hijos que contiene esta columna
      children: <Widget>[
        //Este es un widget de tipo Icon el cual no dibuja un icono en la pantalla
        Icon(
          //Seleccionamos el icono que querramos mostrar
          Icons.audiotrack,
          //Definimos el color del icono
          color: Color(0xFF388E3C),
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.green
          ),
        )
      ],
    );
  }

  Widget componenteDos(String name){
    return Column(
      children: <Widget>[
        Icon(
          Icons.audiotrack,
          color: Colors.black45,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.black45
          ),
        )
      ],
    );
  }
  // Este widget es la raiz de la aplicación.
  @override
  //El metodo build es el encargado de construir el widget en este caso
  // retornará una MaterialApp
  Widget build(BuildContext context) {
    return MaterialApp(
      //Este es el título que la aplicación presenta al verse en segundo plano
      title: 'Flutter Demo',
      //Este es el tema de la aplicación, Tando colores como el contraste que
      //que tendran los textos en widgets como el appBar, ect.
        theme: ThemeData(
        //Se define un atributo del tema, en este caso el color primario de la aplicación
        primarySwatch: Colors.green,
      ),
      //El atributo 'home' es el encargado de generar la estructura base de la
      //aplicación ya que contiene el widget principal de la aplicación el 'Scaffold'

        /*El Scaffold es el widget que contendra todos los componentes(widgets) de la aplicación
        * entre ellos los principales son el AppBar y el Body*/
      home: Scaffold(
        /*El appBar sera nuestra barra de herramientas donde podremos poner un menu
        * el título y algunos items que se puedan necesitar*/
        appBar: AppBar(
          /*El title es el título que tendra el appBar y recibe un widget de texto*/
          title: Text(
            "Mi primera app",
          ),
        ),
        /*El body será el contenedor de tolo el contenido que querramos mostrar
        * en nuestra aplicación*/

        /*El ListView es un widget que nos permite poner varios widgets uno detras del
        otro como si se tratará de un Column pero tiene  la caracteristica
        de generar un SCROLL en la pantalla el cual evitara que el contenido
        de la pantalla sea limitado*/
        body: ListView(
          children: <Widget>[
            /*Column es un widget que nos permite agrupar varios otros widgets
            * en forma vertical (En coluna)*/
            Column(
              /*El atributo children nos permite instanciar la cantidad de widgets
              * 'hijos' que querramos estructurar en nuestra columna*/
              children: <Widget>[
                /*El Container es un widget que nos permitira darle una dimención
                * especifica a cualquier widget que tenga como hijo en este caso
                * una fila, de la misma forma podemos personalizar el contenedor como
                * mejor nos parezca Linea: */
                Container(
                  height: 40.0,
                  color: Color(0xFF388E3C),
                  /*El widget Center nos permite posicionar un widget hijo al medio del
                  * widget padre*/
                  child: Center(
                    /*El widget Row al igual que el Column nos permite agrupar
                    * varios widgets hijos pero en este caso en forma de fila*/
                      child: Row(
                        /*El atributo mainAxisAligment nos permite cambiar la posicion
                        * entre los widgets hijos del row, asi como poner un espacio
                        * entre estos*/
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          textoPrincipal("uno"),
                          textoPrincipal("dos"),
                          textoPrincipal("tres"),
                          textoPrincipal("cuatro"),
                          textoPrincipal("cinco"),
                        ],
                      )
                  ),
                ),
                //Esto es un contenedor y sirve para contener
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      componenteUno("For you"),
                      componenteDos("Dos"),
                      componenteDos("tres"),
                      componenteDos("cuatro"),
                      componenteDos("cinco"),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage('assets/images/perrito.jpg'),
                ),
                Image(
                  image: NetworkImage('https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/perritos_0.jpg'),
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                ),
                Container(
                  width: 120.0,
                  height: 120.0,
                  margin: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 5.0),
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                    )
                  ),
                  child: Center(
                    child: Text("Hola mundo"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.pink,
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )
      )//MyHomePage(title: 'Hola Mundo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
