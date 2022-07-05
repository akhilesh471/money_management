import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/logic/transaction/bloc/transaction_bloc.dart';

class DropdownBoxWidget extends StatefulWidget {
  const DropdownBoxWidget({Key? key}) : super(key: key);

  @override
  State<DropdownBoxWidget> createState() => _DropdownBoxWidgetState();
}

class _DropdownBoxWidgetState extends State<DropdownBoxWidget> {
  int dropdownvalue = 1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.057,
      // width: width * 0.35,
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(15)),
      child: DropdownButton(
        underline: SizedBox(),
        dropdownColor: Colors.blueGrey,
        iconEnabledColor: Colors.white,
        value: dropdownvalue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: [
          DropdownMenuItem(
            child: const Text(
              "All List",
              style: TextStyle(color: Colors.white),
            ),
            value: 1,
            onTap: () {
              context
                  .read<TransactionBloc>()
                  .add(const TransactionEvent.filteredTransaction(index: 1));
            },
          ),
          DropdownMenuItem(
            child: const Text(
              "Today",
              style: TextStyle(color: Colors.white),
            ),
            value: 2,
            onTap: () {
              // daypicker();
              context
                  .read<TransactionBloc>()
                  .add(const TransactionEvent.filteredTransaction(index: 2));
            },
          ),
          DropdownMenuItem(
            child:
                const Text("This Week", style: TextStyle(color: Colors.white)),
            value: 3,
            onTap: () {
              // weekPicker();
              context
                  .read<TransactionBloc>()
                  .add(const TransactionEvent.filteredTransaction(index: 3));
            },
          ),
          DropdownMenuItem(
            child:
                const Text("This Month", style: TextStyle(color: Colors.white)),
            value: 4,
            onTap: () {
              // monthPicker();
              context
                  .read<TransactionBloc>()
                  .add(const TransactionEvent.filteredTransaction(index: 4));
            },
          ),
          DropdownMenuItem(
            child:
                const Text("This Year", style: TextStyle(color: Colors.white)),
            value: 5,
            onTap: () {
              // yearPicker();
              context
                  .read<TransactionBloc>()
                  .add(const TransactionEvent.filteredTransaction(index: 5));
            },
          ),
        ],
        onChanged: (int? value) {
          setState(() {
            dropdownvalue = value!;
          });
        },
      ),
    );
  }
}
