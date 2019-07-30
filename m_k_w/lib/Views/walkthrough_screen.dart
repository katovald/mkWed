import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:m_k_w/Models/walkthrough.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mk_flat_button.dart';

class WalkthroughScreen extends StatefulWidget {
  final SharedPreferences prefs;
  final List<Walkthrough> pages = [
    Walkthrough(
      icon: Icons.markunread_mailbox,
      title: "Esta es una aplicación diseñada para invitaciones virtuales a eventos organizados por nuestros usuarios.",
      description: "Si la basajste por curiosidad te tengo la mala noticia que te pedirá un código de invitación.",
    ),
    Walkthrough(
      icon: Icons.verified_user,
      title: "Encontraras dentro el numero permitido de acompañantes que puedes llevar, además podrás solicitar mas lugares y el anfitrión te contestará.",
      description: "Tus boletos.",
    ),
    Walkthrough(
      icon: Icons.account_circle,
      title: "Debes estar registrado en la plataforma, no te preocupes puedes hacerlo mediante Facebook.",
      description: "Tus datos.",
    ),
  ];

  WalkthroughScreen({this.prefs});

  @override
  _WalkthroughScreenState createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper.children(
        autoplay: false,
        index: 0,
        loop: false,
        pagination: new SwiperPagination(
          margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
          builder: new DotSwiperPaginationBuilder(
              color: Color.fromRGBO(252, 151, 9, .5),
              activeColor: Color.fromRGBO(252, 151, 9, 1.0),
              size: 6.5,
              activeSize: 8.0),
        ),
        control: SwiperControl(
          iconPrevious: null,
          iconNext: null,
        ),
        children: _getPages(context),
      ),
    );
  }

  List<Widget> _getPages(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 0; i < widget.pages.length; i++) {
      Walkthrough page = widget.pages[i];
      widgets.add(
        new Container(
          color: Color.fromRGBO(255, 242, 154, 1.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Icon(
                  page.icon,
                  size: 125.0,
                  color: Color.fromRGBO(101, 77, 73, 1.0),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
                child: Text(
                  page.title,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(101, 77, 73, 1.0),
                    decoration: TextDecoration.none,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: "OpenSans",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: page.extraWidget,
              )
            ],
          ),
        ),
      );
    }
    widgets.add(
      new Container(
        color: Color.fromRGBO(255, 242, 154, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.code,
              size: 125.0,
              color: Color.fromRGBO(101, 77, 73, 1.0),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
              child: Text(
                "Comencemos.",
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(101, 77, 73, 1.0),
                  decoration: TextDecoration.none,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: "OpenSans",
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, right: 15.0, left: 15.0),
              child: MKButton(
                title: "Iniciar",
                fontSize: 22,
                fontWeight: FontWeight.w700,
                textColor: Colors.white,
                onPressed: () {
                  widget.prefs.setBool('seen', true);
                  Navigator.of(context).pushNamed("/root");
                },
                splashColor: Colors.black12,
                borderWidth: 2,
                borderColor: Colors.white,
                color: Color.fromRGBO(252, 151, 9, 1.0),
              ),
            ),
          ],
        ),
      ),
    );
    return widgets;
  }
}
