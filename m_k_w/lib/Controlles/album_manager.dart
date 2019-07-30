import 'package:flutter/material.dart';
import 'package:m_k_w/Models/album.dart';

class AlbumManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AlbumManager();
  }
}

class _AlbumManager extends State<AlbumManager> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Expanded(child: Album(textos: [
          ':)',
          'El mes patrio siempre sera el mes donde nos conocimos y comenzo nuestra ventura',
          'Nuestros coqueteos iniciales',
          'Nuestras primeras citas',
          'Para todo mal Mezcal y como nos vemos bien tambien #ManoSantaMezcal',
          'La primera visita a su ciudad favorita',
          'Un dia más en queretaro',
          'Probando la camara de los telefonos',
          'Nos vemos bien hasta en eventos del trabajo',
          'Ya comenzabamos a soñar en una vida juntos',
          'En la fiesta de año nuevo',
          'NPI de donde andabamos ahi',
          'Detalles de cada que cumpliamos meses',
          'Siempre juntos',
          'Tampoco se donde estabamos...',
          'Lo se... es un amor',
          'Resolviendo problemas juntos.',
          'Un tiempo de relax para nosotros',
          'En la salud y en la enfermedad :P, ojito malo',
          'Rumbo a nuestro primer viaje de pareja.',
          'Besito',
          'Siempre gordos #SoytuFat',
          'Hasta firulais estaba feliz',
          'A veces seria',
          'Buenos recuerdos',
          'Hasta no ver el fondo',
          ':D',
          'Probando lugares nuevos',
          'Una mayitaaaaa',
          'Probemos mas',
          'Nos vemos bien... en el oftalmologo',
          'Lo intentamos pero no era el momento',
          'Siempre contigo mujer',
          'Esos momentos los esperaba siempre, salir y verte para estar a tu lado',
          'Linda sonrisa',
          'Cuautla #TiaPaty',
          'Me gusta mucho y amo a esta mujer',
          'Me acompaña con mi familia tambien',
          'Probando cosas caras',
          'Comidaaaaaaaaa :P',
          'Sushi, una de sus comidas favoritas',
          'De ridiculos, porque no',
          'Porque tambien apoyamos en proyectos altruistas',
          'Al final... me dijo que si :D',
          'Fiestas familiares y siempre juntos',
          'Es hermosa',
          'Y nos vemos bien juntos',
          'Aunque se enoje :P',
          'Estare siempre ahi para ti'
        ], imagenes: [
          'assets/album01.jpg',
          'assets/album00.jpg',
          'assets/album02.jpg',
          'assets/album03.jpg',
          'assets/album04.jpg',
          'assets/album05.jpg',
          'assets/album06.jpg',
          'assets/album07.jpg',
          'assets/album08.jpg',
          'assets/album09.jpg',
          'assets/album10.jpg',
          'assets/album11.jpg',
          'assets/album12.jpg',
          'assets/album13.jpg',
          'assets/album14.jpg',
          'assets/album15.jpg',
          'assets/album16.jpg',
          'assets/album17.jpg',
          'assets/album18.jpg',
          'assets/album19.jpg',
          'assets/album20.jpg',
          'assets/album21.jpg',
          'assets/album22.jpg',
          'assets/album23.jpg',
          'assets/album24.jpg',
          'assets/album25.jpg',
          'assets/album26.jpg',
          'assets/album27.jpg',
          'assets/album28.jpg',
          'assets/album29.jpg',
          'assets/album30.jpg',
          'assets/album31.jpg',
          'assets/album32.jpg',
          'assets/album33.jpg',
          'assets/album34.jpg',
          'assets/album35.jpg',
          'assets/album36.jpg',
          'assets/album37.jpg',
          'assets/album38.jpg',
          'assets/album39.jpg',
          'assets/album41.jpg',
          'assets/album42.jpg',
          'assets/album43.jpg',
          'assets/album46.jpg',
          'assets/album47.jpg',
          'assets/album48.jpg',
          'assets/album49.jpg',
          'assets/album50.jpg',
          'assets/album51.png'
        ])
        )
      ],
    );
  }
}
