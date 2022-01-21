import 'package:flutter/material.dart';

Widget buildBox({required Widget child}) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(27)),
        // border: BoxBorder(
        //   Padding(padding: EdgeInsets.fromLTRB(20.0, 12.0, 12.0, 12.0)),
        // ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            //offset: Offset(4, 4),
            spreadRadius: 3,
          ),
        ],
      ),
      padding: const EdgeInsets.all(27.0),
      child: child,
    );
