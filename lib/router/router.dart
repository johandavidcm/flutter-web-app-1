import 'package:fluro/fluro.dart';
import 'package:primeraapp/ui/views/counter_provider_view.dart';
import 'package:primeraapp/ui/views/counter_view.dart';
import 'package:primeraapp/ui/views/view_404.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/stateful',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/stateful/:base',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/provider',
      handler: _counterProviderHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.notFoundHandler = _pageNotFoundHandler;
  }

  // Handlers
  static Handler _counterHandler = Handler(
    handlerFunc: (context, params) => CounterView(
      base: params['base']?[0] ?? '15',
    ),
  );

  static Handler _counterProviderHandler = Handler(
    handlerFunc: (context, params) => CounterProviderView(),
  );

  static Handler _pageNotFoundHandler = Handler(
    handlerFunc: (_, __) => View404(),
  );
}
