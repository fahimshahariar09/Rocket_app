import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.purple[500],
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/rocket_logo.png"),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Mobile No.",style: TextStyle(color: Colors.white),),
                ],
              ),
              const SizedBox(height: 10),
              TextField(
                controller: nameController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(25),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black,width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black,width: 2)),
                  hintText: "Mobile No.",
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.person,color: Colors.black,),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("PIN",style: TextStyle(color: Colors.white)),
                ],
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passController,
                keyboardType: const TextInputType.numberWithOptions(decimal: false),
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                maxLength: 4,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(25),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black,width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black,width: 2)),
                  hintText: "Pin",
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.key,color: Colors.black,),
                ),
              ),
              const SizedBox(height: 20),
              Container(


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: (){
                    print("...NameController:${nameController.text}");
                    print("...PassController:${passController.text}");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: const ListTile(
                    trailing: Icon(Icons.arrow_forward,
                      size: 25,
                      weight: 50,
                      color: Colors.purple,
                    ),
                    title: Center(
                        child: Text("LOG IN",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
