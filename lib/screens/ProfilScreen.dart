import 'package:app/screens/underScreens/help_Screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(0),
                        width: w * .5,
                        height: h * 0.2,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/logo.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: const Color(0xFFFF7643),
                            padding: const EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: const Color(0xFFFFECDF),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const HelpScreen(),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                //Icons.supervised_user_circle,
                                Icons.info,
                                color: Color(0xFFFF7643),
                                size: 22,
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Text('Plus d\'informations'),
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: const Color(0xFFFF7643),
                            padding: const EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: const Color(0xFFFFECDF),
                          ),
                          onPressed: () => {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.settings,
                                color: Color(0xFFFF7643),
                                size: 22,
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Text('Paramètre'),
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: const Color(0xFFFF7643),
                            padding: const EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: const Color(0xFFFFECDF),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const HelpScreen(),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.help,
                                color: Color(0xFFFF7643),
                                size: 22,
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Text('Centre d\'aide'),
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: const Color(0xFFFF7643),
                            padding: const EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: const Color(0xFFFFECDF),
                          ),
                          onPressed: () async {
                            await launch(
                                'mailto:mouloudelarram@gmail.com?subject=feedback app Essaouira&body=');
                          },
                          child: Row(
                            children: const [
                              Icon(
                                Icons.feedback,
                                color: Color(0xFFFF7643),
                                size: 22,
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Text('FeedBack'),
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                      /* SizedBox(
                        height: h * 0.1,
                      ),
                      GestureDetector(
                        //onTap: () => {AuthController.instance.logOut()},
                        child: Container(
                          width: w * 0.5,
                          height: h * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/loginbtn.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Sing out",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.08,
                      ), */
                    ],
                  ),
                ),
              ),
            )
          
    );
  }
}
