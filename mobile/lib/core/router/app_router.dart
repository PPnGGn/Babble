import '../di/injection.dart';
import '../../ui/chat/chat_page.dart';
import '../../ui/chat_list/chat_list_page.dart';
import '../../ui/settings/settings_page.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';

// Функция для создания router после инициализации зависимостей
GoRouter createAppRouter() {
  return GoRouter(
    observers: [TalkerRouteObserver(getIt<Talker>())],
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'chat_list',
        builder: (context, state) => const ChatListPage(),
      ),
      GoRoute(
        path: '/chat',
        name: 'chat',
        builder: (context, state) => const ChatPage(),
      ),
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
  );
}
