import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingAmountpercent;

  ChartBar(
    this.label, 
    this.spendingAmount, 
    this.spendingAmountpercent
    );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Container(
              height: constraints.maxHeight * 0.15,
              child: FittedBox(
                  child: Text('\$${spendingAmount.toStringAsFixed(0)}')
                  )
                ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Container(
            height: constraints.maxHeight * 0.6,
            width: 10,
            child: Stack(children: [
              Container(
                  decoration: BoxDecoration(
                  border: Border.all(
                  color: Colors.grey, 
                  width: 1.0
                  ),
                color: Color.fromARGB(255, 197, 196, 196),
                borderRadius: BorderRadius.circular(10),
              )
            ),
              FractionallySizedBox(
                heightFactor: spendingAmountpercent,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10)
                        )
                      ),
              )
            ]),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Container(height: constraints.maxHeight * 0.15, child: Text(label)),
        ],
      );
    });
  }
}
