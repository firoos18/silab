import 'package:flutter/material.dart';

class ClassDetailTabView extends StatefulWidget {
  const ClassDetailTabView({super.key});

  @override
  State<ClassDetailTabView> createState() => _ClassDetailPageTabiewState();
}

class _ClassDetailPageTabiewState extends State<ClassDetailTabView> {
  int pageLocation = 0;
  PageController controller = PageController();

  List<String> pageItems = ['Asisten', 'Modul', 'Classmates'];

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: pageItems.length,
              itemBuilder: (context, index) => InkWell(
                borderRadius: BorderRadius.circular(90),
                splashColor: Colors.transparent,
                onTap: () => controller.jumpToPage(index),
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: pageLocation != index
                        ? const Color(0xffF4F4F9)
                        : const Color(0xff3272CA),
                    border: pageLocation != index
                        ? Border.all(
                            color: const Color(0xff1D1D1D).withOpacity(0.5),
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignInside)
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      pageItems[index],
                      style: TextStyle(
                        color: pageLocation != index
                            ? const Color(0xff1D1D1D).withOpacity(0.7)
                            : const Color(0xffF4F4F9),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Flexible(
            fit: FlexFit.tight,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) => setState(() {
                pageLocation = value;
              }),
              itemCount: pageItems.length,
              itemBuilder: (context, index) => ListView.builder(
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, idx) => List.generate(
                  10,
                  (listIndex) => Container(
                    width: double.infinity,
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: const Color(0xffF4F4F9),
                    ),
                    child: Center(
                        child: Text(
                            'Page : ${pageItems[index]} ${listIndex.toString()}')),
                  ),
                ).toList()[idx],
              ),
            ),
          )
        ],
      ),
    );
  }
}
