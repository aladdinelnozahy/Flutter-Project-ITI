import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);
  TextEditingController _emailControl = TextEditingController();
  TextEditingController _passwordControl = TextEditingController();
  // pic data for input

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.black,
          backgroundColor: Color.fromARGB(255, 188, 82, 230),
          foregroundColor: Color.fromARGB(255, 13, 13, 12),
          title: Text(
            "Login",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainrAxisAlignment.center,
              children: [
                Image(
                  width: 150,
                  // height: 200,
                  image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/295/295128.png"),
                ),

                // Email
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter email';
                    }
                    return null;
                  },
                  controller: _emailControl,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefix: Icon(Icons.email),
                      label: Text("Email"),
                      helperText: "please enter email address",
                      hintText: "login@mail.com", // placeholder
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                //Passwrod
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter password';
                    }
                    return null;
                  },
                  controller: _passwordControl,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefix: Icon(Icons.lock),
                      suffixIcon:
                          Icon(Icons.visibility), //hide  icon  (visibility_off)
                      label: Text("Password"),
                      helperText: "please enter your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),

                // Button
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity, //fullwidth
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 216, 147, 221),
                  ),

                  child: MaterialButton(
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    onPressed: () {
                      // print(_emailControl.text);
                      // print(_passwordControl.text);
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('processing Data')),
                        );
                      }
                    },
                    child: Text("Supmit",
                        style: TextStyle(color: Colors.black, fontSize: 25)),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                        onPressed: () {},
                        child: Text("Sign Up",
                            style: TextStyle(color: Colors.brown[800]))),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Forget Password"),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
