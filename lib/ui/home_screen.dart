import 'package:flutter/material.dart';
import 'components/customs_button.dart'; // Ensure the correct path to CalculatorButton

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String display = ''; // To store and display button presses

  // Function to handle button presses
  void _onButtonPressed(String label) {
    setState(() {
      display += label; // Append the label of the button pressed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Center(
          child: Column(
            children: [
              // Display for the pressed buttons
              Container(
                height: 150,
                width: 300,
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                    color: Colors.black26,
                  border: Border.all(color: Colors.black26),
                  boxShadow:[  BoxShadow(

                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(2, 2),
                  )]

                ),
                child: Text(
                  display, // Show the label of pressed buttons
                  style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 400,
                width: 300, // Adjusted width for better button alignment
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Even spacing between rows
                  children: [
                    // First row (C, X, %, /)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: CalculatorButton(label: 'C', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: 'X', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '%', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '/', onTap: _onButtonPressed)),
                      ],
                    ),
                    // Second row (7, 8, 9, *)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: CalculatorButton(label: '7', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '8', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '9', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '*', onTap: _onButtonPressed)),
                      ],
                    ),
                    // Third row (4, 5, 6, -)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: CalculatorButton(label: '4', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '5', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '6', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '-', onTap: _onButtonPressed)),
                      ],
                    ),
                    // Fourth row (1, 2, 3, +)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: CalculatorButton(label: '1', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '2', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '3', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '+', onTap: _onButtonPressed)),
                      ],
                    ),
                    // Fifth row (0, ., =)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(flex: 2, child: CalculatorButton(label: '0', onTap: _onButtonPressed)), // '0' button occupies two slots
                        Expanded(child: CalculatorButton(label: '.', onTap: _onButtonPressed)),
                        Expanded(child: CalculatorButton(label: '=', onTap: _onButtonPressed)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
