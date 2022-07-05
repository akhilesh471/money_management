import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/logic/transaction/bloc/transaction_bloc.dart';
import 'package:spendee/models/transactions/transactions.dart';
  TextEditingController? searchEditingControl = TextEditingController();

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({Key? key}) : super(key: key);

  @override
  State<AnimatedSearchBar> createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  bool _folded = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      width: _folded ? 56 : 200,
      height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
          boxShadow: kElevationToShadow[6]),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16),
              child: !_folded
                  ? TextField(
                      onChanged: ((value) {
                        // TransactionDb.instance.transactionListNotifier.value =
                        //     TransactionDb.instance.transactionListNotifier.value
                        //         .where((TransactionModel model) =>
                        //             model.notes.toLowerCase().contains(value.toLowerCase()))
                        //         .toList();
                        context.read<TransactionBloc>().add(TransactionEvent.SearchInTransaction(text: value));
                        
                      }),
                      controller: searchEditingControl,
                      decoration: InputDecoration(
                          hintText: 'Search your notes',
                          hintStyle: TextStyle(color: Colors.blue[300]),
                          border: InputBorder.none), // InputDecoration
                    ) // TextField
                  : null,
            ), // Container
          ), // Expanded
          AnimatedContainer(
              duration: Duration(milliseconds: 400),
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(_folded ? 32 : 0),
                      topRight: Radius.circular(32),
                      bottomLeft: Radius.circular(_folded ? 32 : 0),
                      bottomRight: Radius.circular(32),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        _folded ? Icons.search : Icons.close,
                        color: Colors.blue[900],
                      ),
                    ), // Icon
                    onTap: () {
                      setState(() {
                        _folded = !_folded;
                      
                        searchEditingControl!.clear();
                     
                      });
                    }),
              ))
        ],
      ),
    );
  }
}
