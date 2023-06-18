import 'package:get/get.dart';


import '../controller/common/drawer_controller.dart';
import '../controller/leader_board/leader_controller.dart';
import '../controller/profile_controller.dart';
import '../controller/quize_peper/quize_controller.dart';
import '../controller/quize_peper/quize_pepers_controller.dart';
import '../screens/app_introduction_screen.dart';
import '../screens/home_screen.dart';
import '../screens/leader_board_screen.dart';
import '../screens/login_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/quiz/answer_check_screen.dart';
import '../screens/quiz/quiz_overview_screen.dart';
import '../screens/quiz/quiz_screen.dart';
import '../screens/quiz/result_screen.dart';
import '../screens/splash.dart';

class AppRoutes {
  static List<GetPage> pages() => [
    GetPage(
      page: () => const SplashScreen(),
      name: SplashScreen.routeName,
    ),
    GetPage(
      page: () => const AppIntroductionScreen(),
      name: AppIntroductionScreen.routeName,
    ),
    GetPage(
        page: () => const HomeScreen(),
        name: HomeScreen.routeName,
        binding: BindingsBuilder(() {
          Get.put(QuizPaperController());
          Get.put(MyDrawerController());
        })),
    GetPage(page: () => const LoginScreen(), name: LoginScreen.routeName),
    GetPage(
        page: () => const ProfileScreen(),
        name: ProfileScreen.routeName,
        binding: BindingsBuilder(() {
          Get.put(QuizPaperController());
          Get.put(ProfileController());
        })),
    GetPage(
        page: () => LeaderBoardScreen(),
        name: LeaderBoardScreen.routeName,
        binding: BindingsBuilder(() {
          Get.put(LeaderBoardController());
        })),
    GetPage(
        page: () => QuizeScreen(),
        name: QuizeScreen.routeName,
        binding: BindingsBuilder(() {
          Get.put<QuizController>( QuizController());
        })),
    GetPage(
        page: () => const AnswersCheckScreen(),
        name: AnswersCheckScreen.routeName),
    GetPage(
        page: () => const QuizOverviewScreen(),
        name: QuizOverviewScreen.routeName),
    GetPage(page: () => const Resultcreen(), name: Resultcreen.routeName),
  ];
}