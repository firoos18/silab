import 'package:flutter/material.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';

class ClassContainer extends StatefulWidget {
  final int index;
  final ClassEntity classEntity;
  final List<ClassEntity> classes;
  final String? selectedClass;
  final ValueChanged<String?> onSelectedClassChanged;
  final bool? isFull;

  const ClassContainer({
    super.key,
    required this.classEntity,
    required this.index,
    required this.classes,
    required this.selectedClass,
    required this.onSelectedClassChanged,
    required this.isFull,
  });

  @override
  State<ClassContainer> createState() => _ClassContainerState();
}

class _ClassContainerState extends State<ClassContainer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 12,
        top: 12,
        bottom: 12,
      ),
      margin: EdgeInsets.only(
        bottom:
            widget.index != widget.classes.indexOf(widget.classEntity) ? 0 : 16,
      ),
      decoration: BoxDecoration(
        color: widget.isFull!
            ? const Color(0xfff4f4f9).withOpacity(0.5)
            : const Color(0xfff4f4f9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Radio(
            value: widget.classEntity.id,
            groupValue: widget.selectedClass,
            onChanged: (value) =>
                widget.isFull! ? null : widget.onSelectedClassChanged(value),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.classEntity.name!,
                  style: TextStyle(
                    color: widget.isFull!
                        ? const Color(0xff1d1d1d).withOpacity(0.5)
                        : const Color(0xff1d1d1d),
                  ),
                ),
                Text(
                  '${widget.classEntity.day}, ${widget.classEntity.startAt} - ${widget.classEntity.endAt}',
                  style: TextStyle(
                    color: widget.isFull!
                        ? const Color(0xff1d1d1d).withOpacity(0.5)
                        : const Color(0xff1d1d1d),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
