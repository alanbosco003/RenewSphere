import 'index.dart';

class BaseStructure extends ReactiveStateWidget<BaseStructureController> {
  const BaseStructure({super.key});
  @override
  BindController<BaseStructureController>? bindController() {
    return BindController(
        controller: () => BaseStructureController(), autoDispose: false);
  }

  final List<Widget> pages = const [
    Dashboard(),
    Customer(),
    Collateral(),
    Loans()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        listenable: controller.currentPage, // Listen to the reactive variable
        listener: (currentPage) {
          return pages[currentPage];
        },
      ),
      bottomNavigationBar: const CustomBottomBarWidget(),
    );
  }
}
