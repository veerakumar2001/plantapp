import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  DropDownList({
    Key? key,
    required this.items,
    required this.title,
    this.boxDecoration,
    required this.buttonWidth,
  }) : super(key: key);
  List<String> items;
  String title;
  double buttonWidth;
  BoxDecoration? boxDecoration;
  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    print(selectedItems);
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        buttonDecoration: widget.boxDecoration ??
            BoxDecoration(
                border: Border.all(width: 1.5, color: Colors.green),
                borderRadius: const BorderRadius.all(Radius.circular(30.0))),
        iconEnabledColor: Colors.white,
        buttonWidth: widget.buttonWidth,
        buttonHeight: MediaQuery.of(context).size.height * 0.05,
        dropdownWidth: MediaQuery.of(context).size.width * 0.5,

        isExpanded: true,
        hint:
            Align(alignment: AlignmentDirectional.center, child: Text('hiiii')),

        items: widget.items.map((item) {
          return DropdownMenuItem<String>(
            value: widget.title,
            //disable default onTap to avoid closing menu when selecting an item
            enabled: true,
            child: StatefulBuilder(
              builder: (context, menuSetState) {
                final _isSelected = selectedItems.contains(item);
                return InkWell(
                  onTap: () {
                    _isSelected
                        ? selectedItems.remove(item)
                        : selectedItems.add(item);
                    //This rebuilds the StatefulWidget to update the button's text

                    ///  setState(() {});

                    //This rebuilds the dropdownMenu Widget to update the check mark
                    menuSetState(() {});
                    print(selectedItems);
                  },
                  // padding fo items and checkbox
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 1),
                        _isSelected
                            ? const Icon(Icons.check_box_outlined)
                            : const Icon(Icons.check_box_outline_blank),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }).toList(),
        //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
        value: selectedItems.isEmpty ? null : selectedItems.last,
        onChanged: (value) {},

        itemHeight: 40,
        itemPadding: EdgeInsets.zero,
        selectedItemBuilder: (context) {
          return widget.items.map(
            (item) {
              return Container(
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  selectedItems.join(', '),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              );
            },
          ).toList();
        },
      ),
    );
  }
}
