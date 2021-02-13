import 'package:app_rent_bike/app/widgets/SwitchTimeZone/switch_time_zone.dart';
import 'package:app_rent_bike/app/widgets/neu_button.dart';
import 'package:app_rent_bike/app/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subTitle = Theme.of(context).textTheme.bodyText2.copyWith(
          color: Theme.of(context).focusColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        );
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CreditCard(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Hora local: ', style: subTitle),
              const SizedBox(height: 60, width: 20),
              const SwitchTimeZone(),
              const SizedBox(width: 30)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Text('Más:', style: _getTextStyle(context)),
          ),
          const SizedBox(height: 15),
          const ListTileNeu(
            pathIcon: 'assets/sitio-web.png',
            text: 'Ir a la Página Web',
            urlToGo: 'https://rent-bike-system.web.app/',
            widthFirstIcon: 45,
          ),
          const SizedBox(height: 20),
          const ListTileNeu(
            pathIcon: 'assets/foreign.png',
            text: 'Probar  versión Web',
            urlToGo: 'https://rent-bike-system.web.app/horarios',
            widthFirstIcon: 40,
          ),
          const SizedBox(height: 20),
          const ListTileNeu(
            pathIcon: 'assets/github.png',
            text: 'Visitar repositorio ',
            urlToGo: 'https://github.com/fardcrex/app-rent-bike',
            widthFirstIcon: 40,
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Text('Desarrollador:', style: _getTextStyle(context)),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Text(
              'Jair Pool Conislla Bocangel',
              style: subTitle,
            ),
          ),
          const SizedBox(height: 25),
          const ListTileNeu(
            pathIcon: 'assets/linkedin.png',
            text: 'Visitar su Linkedin:',
            urlToGo: 'https://www.linkedin.com/in/jair-pool-conislla-bocangel-a6931579/',
            widthFirstIcon: 40,
          ),
          const SizedBox(height: 20),
          const ListTileNeu(
            pathIcon: 'assets/github.png',
            text: 'Visitar su Github:     ',
            urlToGo: 'https://github.com/fardcrex',
            widthFirstIcon: 40,
          ),
          const SizedBox(height: 20),
          const ListTileNeu(
            pathIcon: 'assets/twitter.png',
            text: 'Visitar su Twitter:  ',
            urlToGo: 'https://twitter.com/fardcrex',
            widthFirstIcon: 40,
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Text('Créditos :', style: _getTextStyle(context)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Text(
              'Iconos diseñados por :',
              style: subTitle,
            ),
          ),
          const SizedBox(height: 20),
          const ListTileUrl(
            name: 'Surang',
            urlLink: 'https://www.flaticon.es/autores/surang',
          ),
          const SizedBox(height: 40),
          const ListTileUrl(
            name: 'Roundicons',
            urlLink: 'https://www.flaticon.es/authors/roundicons',
          ),
          const SizedBox(height: 40),
          const ListTileUrl(
            name: 'Pixel-perfect',
            urlLink: 'https://www.flaticon.es/authors/pixel-perfect',
          ),
          const SizedBox(height: 40),
          const ListTileUrl(
            name: 'Dinosoftlabs',
            urlLink: 'https://www.flaticon.es/autores/dinosoftlabs',
          ),
          const SizedBox(height: 40),
          const ListTileUrl(
            name: 'Eucalyp',
            urlLink: 'https://www.flaticon.es/autores/eucalyp',
          ),
          const SizedBox(height: 40),
          const ListTileUrl(
            name: 'Freepik',
            urlLink: 'https://www.freepik.com',
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 2,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 10),
          const ListTileUrl(
            name: 'lugar:',
            urlLink: 'https://www.flaticon.es/',
          ),
          const SizedBox(height: 40),
          const ListTileUrl(
            name: 'Stevendz',
            urlLink: 'https://github.com/stevendz/payment_yt',
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  TextStyle _getTextStyle(BuildContext context) => GoogleFonts.alegreya(
        color: Theme.of(context).primaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );
}

class ListTileUrl extends StatelessWidget {
  final String name;
  final String urlLink;
  const ListTileUrl({Key key, this.name, this.urlLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: _getTextStyleSecundary(context, underline: false)),
          Text(urlLink, style: _getTextStyleSecundary(context)).onClick(() async {
            if (await canLaunch(urlLink)) {
              await launch(urlLink);
            } else {
              throw 'Could not launch $urlLink';
            }
            return;
          }),
        ],
      ),
    );
  }

  TextStyle _getTextStyleSecundary(BuildContext context, {bool underline = true}) =>
      Theme.of(context).textTheme.bodyText2.copyWith(
            color: Theme.of(context).primaryColor,
            fontSize: underline ? 10 : 12,
            fontWeight: FontWeight.normal,
            decoration: underline ? TextDecoration.underline : TextDecoration.none,
          );
}

class ListTileNeu extends StatelessWidget {
  final double widthFirstIcon;
  final String pathIcon;
  final String urlToGo;
  final String text;

  const ListTileNeu({Key key, this.widthFirstIcon, this.pathIcon, this.text, this.urlToGo}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: widthFirstIcon,
              child: Image.asset(pathIcon),
            ),
            const SizedBox(width: 20),
            Text(text,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Theme.of(context).focusColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
            const Spacer(),
            NMButtonWithState(
              onClick: _launchURL,
              icon: Image.asset('assets/external-link.png'),
            ),
          ],
        ),
      );

  Future<void> _launchURL() async {
    //'https://rent-bike-system.web.app/';
    if (await canLaunch(urlToGo)) {
      await launch(urlToGo);
    } else {
      throw 'Could not launch $urlToGo';
    }
    return;
  }
}

class CreditCard extends StatelessWidget with StyleAppMixin {
  const CreditCard({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      decoration: nMbox,
      child: Center(
        child: Text(
          'Mini sistema para la renta de ciclistas en tiempo real con distintos horarios que van desde las 8:00 am hasta las 8:00 pm en GTM-5.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                color: Theme.of(context).focusColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
