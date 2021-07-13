import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool isVisible=true;
  int cnt=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment(-0.9,0),
                  child: Text("Login",style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: emailController,
                  validator: (value){
                  if(value.isEmpty)
                    {
                      return "email mustn't be empty";
                    }
                  return null;
                  },
                  onChanged: (value){
                    print(emailController.text);
                  },
                  onFieldSubmitted: (value){
                    print(emailController.text);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Email address"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: passwordController,
                  validator: (value){
                    if(value.isEmpty)
                    {
                      return "password mustn't be empty";
                    }
                    return null;
                  },
                  onChanged: (value){
                    print(value);
                  },
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isVisible,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          isVisible=!isVisible;
                        });
                      },
                      icon: Icon(isVisible==true?Icons.visibility:Icons.visibility_off),
                    ),
                      prefixIcon: Icon(Icons.lock),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Password"
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account?",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300
                    ),),
                    TextButton(onPressed: (){},
                      child: Text("Register now",style: TextStyle(
                          color:Colors.blue,
                      ),),

                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  height: 40,
                  child: MaterialButton(
                    onPressed:(){
                      if(formKey.currentState.validate())
                        {
                          print(passwordController.text);
                          print(emailController.text);
                        }
                    } ,
                  child: Text("LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
