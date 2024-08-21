import 'package:ektos/social_component.dart';
import 'package:ektos/core/core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController textFieldController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ekto Save'),
        backgroundColor: Colors.blue[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Paste the link of the file!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            width: size.width * 0.9,
            //height: size.height * 0.1,
            color: Colors.grey.shade300,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(66, 165, 245, 1)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.blue)),
                  hintText: 'Paste the link here'),
              controller: textFieldController,
              enableInteractiveSelection: true,
            ),
          ),
          SizedBox(
            width: 160,
            height: 40,
            child: ElevatedButton(
                onPressed: () {
                  Downloader().download(textFieldController.text);
                },
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(Colors.blue.shade400)),
                child: const Row(
                  children: [
                    Text(
                      'Download',
                      style: TextStyle(fontSize: 15),
                    ),
                    Icon(Icons.save_alt_outlined)
                  ],
                )),
          ),
          const Text(
            'You can download any file from all social media',
            style: TextStyle(fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              socialHandle(
                  'https://i.pinimg.com/564x/cc/31/6f/cc316f97197528e5e26e613a93ab16a4.jpg'),
              socialHandle(
                  'https://i.pinimg.com/564x/64/24/37/642437ceacb6fd6e8ecd2330deda7c1d.jpg'),
              socialHandle(
                  'https://i.pinimg.com/564x/43/85/a5/4385a5479214954fa9fab6f1a778623f.jpg'),
              socialHandle(
                  'https://i.pinimg.com/564x/c3/96/4e/c3964efd6f18c4df182d8ec6272eaddd.jpg'),
              socialHandle(
                  'https://i.pinimg.com/564x/de/b4/93/deb493608dae9e533ef6b6894095b797.jpg'),
              socialHandle(
                  'https://i.pinimg.com/564x/6c/b7/96/6cb796824b0c41b7c5dc40728ffcfc91.jpg')
            ],
          ),
          const Text('Developed by meek © 2024')
        ],
      ),
    );
  }
}
