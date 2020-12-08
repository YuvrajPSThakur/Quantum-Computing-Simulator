import 'package:flutter/material.dart';
class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override


  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          Text(
            'The Quantum Gates',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('X-gate',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical : 8.0),
            child: Text('The two different X-gates provided flips the bits across'
                ' the different axis, as shown. Doing this to a qubit flips its bottom circle.'
                ' So if it was going to give a 0, it would now provide a 1 and vice versa, random stays random.'
                ' Changing the bottom circle of a qubit also affects how it relates to other qubits, thats why the '
                'effect of X-gate will be to flip a whole row of circles.',



            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Z-gate',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical : 8.0),
            child: Text('This is similar to the X-gate but unlike X which flips the bottom circle it is used to change the top of the circle . These operations are called Clifford operations'
                ' , because there effect on the circles are relatively straight forward. '



            ),
          ),
          Text('H-gate',
            style: TextStyle(
              fontSize: 25,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical : 8.0),
            child: Text(''
                'The H-gate is used to swap the two circles of the qubit, and also their corresponding rows. With this, we can change which measurements of the qubit give guaranteed results. For example, we can take the state 0 (the bottom circle is 0)  and use the H-gate to swap it to the top . Then a qubit that was certain to give a 0 result when measuring its bottom circle now does so for the top. If we do an X before the H or a Z after, we can make its top circle white instead.'



            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('CZ-gate',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical : 8.0),
              child: Text('CZ is a controlled gate, the effect of this gate on the qubit can we perceived in different ways, but we will end up with the same result. One way the CZ first looks at the bottom circle of the left qubit depends on whether the circle is 1 or 0. The CZ does a Z to the right qubit or does nothing, respectively. '
                  'The left qubit is therefore effectively acting as a switch, deciding whether the right qubit gets a Z or not . Another explanation of the CZ is the same as this, but with the roles of the two qubits reversed. In this, the right qubit acts as a switch, and the left one might get a Z. In a third way, we can think of it as a gate that swaps the two qubits.'

              )
          )



        ],

      ),
    );
  }
}
