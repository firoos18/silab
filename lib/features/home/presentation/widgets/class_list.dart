import 'package:flutter/material.dart';

class ClassList extends StatefulWidget {
  const ClassList({super.key});

  @override
  State<ClassList> createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  List<dynamic> classList = [];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.only(top: 24),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Kelas',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: classList.isEmpty
                  ? const Center(
                      child: SizedBox(
                        width: 289,
                        child: Text(
                          'Oops! Tidak ada kelas. Anda belum terdaftar di kelas apapun',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: classList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Class ${index + 1}'),
                        );
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}
