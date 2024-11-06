import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddDeckScreen extends StatefulWidget {
  const AddDeckScreen({super.key});

  @override
  State<AddDeckScreen> createState() => _AddDeckScreenState();
}

class _AddDeckScreenState extends State<AddDeckScreen> {
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  "Create a new deck",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: CloseButton(
                  color: Colors.black,
                  onPressed: () => context.pop(),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  'Deck Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                ),
                keyboardType: TextInputType.name,
              ),
              const Divider(
                height: 40,
              ),
              const Row(
                children: [
                  Expanded(
                      child: Text(
                    'Format:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                  Expanded(
                      child: Text(
                    'Commander/ EDH',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ))
                ],
              ),
            ],
          ),
          const Spacer(),
          FilledButton(
            onPressed: () => print('button pressed'),
            style: FilledButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text(
              'Create Deck',
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
