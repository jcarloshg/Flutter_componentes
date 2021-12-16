import 'package:flutter/material.dart';

import 'package:vi_componentes/pages/alert_page.dart';
import 'package:vi_componentes/pages/animated_container.dart';
import 'package:vi_componentes/pages/avatar_page.dart';
import 'package:vi_componentes/pages/card_page.dart';
import 'package:vi_componentes/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext context) => const AlertPage(),
    'avatar': (BuildContext context) => const AvatarPage(),
    'card': (BuildContext context) => const CardPage(),
    'animatedContainer': (BuildContext context) =>
        const AnimatedContainerPage(),
  };
}
