import 'package:flutter/material.dart';
import 'package:movil_go_trade/pantallas/pantalla1.dart';
import 'package:movil_go_trade/pantallas/pantalla2.dart';
import 'package:provider/provider.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _NavegacionModel(),
      child: Scaffold(
        body: _Paginas(),
        bottomNavigationBar: _Navegacion(),
      ),
    );
  }
}

class _Navegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final navegacionModel = Provider.of<_NavegacionModel>(context);

    return Container(
      height: 80,
      child: BottomNavigationBar(
          currentIndex: navegacionModel.paginaActual,
          onTap: (i) => navegacionModel.paginaActual = i,
          selectedItemColor:
              const Color(0xFF888787),
          unselectedItemColor:
              const Color(0xFFCACACA),
          selectedLabelStyle: const TextStyle(
              color: Color(0xFF888787),
              fontSize: 17
              ), 
          unselectedLabelStyle: const TextStyle(color: Color(0xFFCACACA),
            fontSize: 17
          ),
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/img/inicio.png"),
                  size: 30,
                ),
                label: "Inicio"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/img/trasnferencias.png"),
                  size: 30,
                ),
                label: "Trasnferencias"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/img/analisis.png"),
                  size: 30,
                ),
                label: "Analisis"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/img/cuenta.png"),
                  size: 30,
                ),
                label: "Cuenta")
          ]),
    );
  }
}

class _Paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final navegacionModel = Provider.of<_NavegacionModel>(context);
    return PageView(
      controller: navegacionModel.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Pantalla1(),
        Container(),
        Pantalla2(),
        Container(),
      ],
    );
  }
}

class _NavegacionModel with ChangeNotifier{
  int _paginaActual = 0;
  PageController _pageController = new PageController();

  int get paginaActual => this._paginaActual;

  set paginaActual(int valor){
    this._paginaActual = valor;
    _pageController.animateToPage(valor, duration: Duration(milliseconds: 250), curve: Curves.ease);
    notifyListeners();
  }

  PageController get pageController => this._pageController;
} 
