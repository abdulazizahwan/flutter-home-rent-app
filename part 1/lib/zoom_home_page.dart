import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/app_styles.dart';
import 'package:flutter_home_rent_app/menu_page.dart';
import 'package:flutter_home_rent_app/size_config.dart';
import 'package:provider/provider.dart';

class ZoomHomePage extends StatefulWidget {
  final Widget menuScreen;
  final Layout contentScreen;

  const ZoomHomePage({
    super.key,
    required this.menuScreen,
    required this.contentScreen,
  });

  @override
  State<ZoomHomePage> createState() => _ZoomHomePageState();
}

class _ZoomHomePageState extends State<ZoomHomePage>
    with TickerProviderStateMixin {
  Curve scaleDownCurve = const Interval(0.0, 0.3, curve: Curves.easeOut);
  Curve scaleUpCurve = const Interval(0.0, 1.0, curve: Curves.easeOut);
  Curve slideOutCurve = const Interval(0.0, 1.0, curve: Curves.easeOut);
  Curve slideInCurve = const Interval(0.0, 1.0, curve: Curves.easeOut);

  createContentDisplay() {
    return zoomAndSlideContent(
      Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx < 3) {
              Provider.of<MenuProvider>(context, listen: false).toggle();
            }
          },
          child: widget.contentScreen.contentBuilder(context),
        ),
      ),
    );
  }

  zoomAndSlideContent(Widget content) {
    SizeConfig().init(context);

    double slidePercent, scalePercent;

    switch (Provider.of<MenuProvider>(context, listen: true).state) {
      case MenuState.closed:
        slidePercent = 0.0;
        scalePercent = 0.0;
        break;
      case MenuState.open:
        slidePercent = 1.0;
        scalePercent = 1.0;
        break;
      case MenuState.opening:
        slidePercent = slideOutCurve.transform(Provider.of<MenuProvider>(
          context,
          listen: true,
        ).percentOpen);
        scalePercent = scaleDownCurve.transform(Provider.of<MenuProvider>(
          context,
          listen: true,
        ).percentOpen);
        break;
      case MenuState.closing:
        slidePercent = slideInCurve.transform(Provider.of<MenuProvider>(
          context,
          listen: true,
        ).percentOpen);
        scalePercent = scaleUpCurve.transform(Provider.of<MenuProvider>(
          context,
          listen: true,
        ).percentOpen);
        break;
    }

    final slideAmount = SizeConfig.blockSizeHorizontal! * 60 * slidePercent;
    final contentScale = 1.0 - (0.2 * scalePercent);
    final cornerRadius = kBorderRadius20 *
        Provider.of<MenuProvider>(
          context,
          listen: true,
        ).percentOpen;

    return Transform(
      transform: Matrix4.translationValues(
        slideAmount,
        0.0,
        0.0,
      )..scale(contentScale, contentScale),
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kBlack.withOpacity(0.1),
              offset: const Offset(0.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 10.0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(cornerRadius),
          child: content,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: widget.menuScreen,
        ),
        createContentDisplay()
      ],
    );
  }
}

class ZoomHomePageMenuController extends StatefulWidget {
  final ZoomHomePageBuilder builder;

  const ZoomHomePageMenuController({
    super.key,
    required this.builder,
  });

  @override
  ZoomHomePageMenuControllerState createState() {
    return ZoomHomePageMenuControllerState();
  }
}

class ZoomHomePageMenuControllerState
    extends State<ZoomHomePageMenuController> {
  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      Provider.of<MenuProvider>(
        context,
        listen: true,
      ),
    );
  }
}

typedef ZoomHomePageBuilder = Widget Function(
    BuildContext context, MenuProvider menuController);

class Layout {
  final WidgetBuilder contentBuilder;

  Layout({
    required this.contentBuilder,
  });
}

class MenuProvider extends ChangeNotifier {
  final TickerProvider vsync;
  final AnimationController _animationController;
  MenuState state = MenuState.closed;

  MenuProvider({
    required this.vsync,
  }) : _animationController = AnimationController(vsync: vsync) {
    _animationController
      ..duration = const Duration(
        milliseconds: 250,
      )
      ..addListener(() {
        notifyListeners();
      })
      ..addStatusListener((AnimationStatus status) {
        switch (status) {
          case AnimationStatus.forward:
            state = MenuState.opening;
            break;
          case AnimationStatus.reverse:
            state = MenuState.closing;
            break;
          case AnimationStatus.completed:
            state = MenuState.open;
            break;
          case AnimationStatus.dismissed:
            state = MenuState.closed;
            break;
        }
        notifyListeners();
      });
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  get percentOpen {
    return _animationController.value;
  }

  open() {
    _animationController.forward();
  }

  close() {
    _animationController.reverse();
  }

  toggle() {
    if (state == MenuState.open) {
      close();
    } else if (state == MenuState.closed) {
      open();
    }
  }

  NavigationItem _navigationItem = NavigationItem.home;

  NavigationItem get navigationItem => _navigationItem;

  void setNavigationItem(NavigationItem navigationItem) {
    _navigationItem = navigationItem;

    notifyListeners();
  }
}

enum MenuState {
  closed,
  opening,
  open,
  closing,
}
