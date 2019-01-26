import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget
{
    State<StatefulWidget> createState()
    {
        return _LoginRegisterState();
    }
}

    enum FormType
    {
        login,
        register
    }


class _LoginRegisterState extends State<LoginRegisterPage>
{
    //methods
     void validateAndSave()
     {

     }

     void moveToRegister()
     {

     }





     @override
  Widget build(BuildContext context)
     {
        return new Scaffold
          (
              appBar: new AppBar
                (
                    title: new Text("Fz Ally "),
                ),

              body: new Container
                (
                    margin: EdgeInsets.all(15.0),

                    child: new Form
                      (
                         child: new Column
                           (
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: createinputs() + createButtons(),

                           )
                      ),
                ),
          );
     }



     List<Widget> createinputs()
     {
        return
          [
              SizedBox(height: 10.0,),
              logo(),
              SizedBox(height: 20.0,),

              new TextFormField
                (
                    decoration: new InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 10.0,),
              new TextFormField
                (
                decoration: new InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 20.0,),
          ];
     }
     Widget logo()
     {
        return new Hero
          (
              tag: 'hero',
              child: new CircleAvatar
                (
                backgroundColor: Colors.transparent,
                radius: 110.0,
                child: Image.asset('images/A_logo.jpg'),
              ),
          );
     }
     List<Widget> createButtons()
     {
       return
         [
              new RaisedButton
                (
                    child: new Text("Login",style: new TextStyle(fontSize: 20.0),),
                    textColor: Colors.white,
                    color: Colors.pink,

                    onPressed: validateAndSave,
              ),
              new FlatButton
                (
                child: new Text("Not have an Account? Create Account?",style: new TextStyle(fontSize: 14.0),),
                textColor: Colors.white,
                onPressed: moveToRegister,
              ),
         ];
     }
}