// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mngmnt/Provider/HomePageProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ChangeNotifierProvider<HomePageProvider>(
            create: (context) => HomePageProvider(),
            child: Consumer<HomePageProvider>(
              builder: (context, provider, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      provider.eligibilityMessage.toString(),
                      style: TextStyle(
                        color: (provider.isEligible == true)
                            ? Colors.green
                            : Colors.red,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Enter Your Age',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onChanged: (val) {
                        provider.checkEligibility(int.parse(val));
                      },
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      provider.nameMessage.toString(),
                      style: TextStyle(
                        color: (provider.isEligible == true)
                            ? Colors.blue
                            : Colors.red,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onChanged: (String val) {
                        provider.checkName(val);
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
