import 'package:flutter/material.dart';
class PhotoGalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Photo Gallery'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Welcome to My Photo Gallery!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                color: Colors.black.withOpacity(.5),
                                width: 1.5,
                              )),
                          hintText: 'Search for photos...',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(11),
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  // Wrap the GridView with a Container to provide a bounded height
                    height: 300, // Set the height as per your requirement
                    child: GestureDetector(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Photo Clicked!!'),
                          ),
                        );
                      },
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10),
                        children: [
                          Column(
                            children: [
                              Container(
                                color: Colors.grey.withOpacity(.3),
                                height: 100,
                                width: 120,
                                //color: Colors.black,
                                child: Image.network(
                                  'https://www.freepnglogos.com/uploads/cat-png/cat-sweety-white-brown-11.png',
                                  height: 100,
                                  width: 80,
                                ),
                              ),
                              Text(
                                'Photo 0',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.grey.withOpacity(.3),
                                height: 100,
                                width: 120,
                                //color: Colors.black,
                                child: Image.network(
                                  'https://www.freepnglogos.com/uploads/cat-png/cat-paw-images-download-31.png',
                                  height: 100,
                                  width: 80,
                                ),
                              ),
                              Text(
                                'Photo 1',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.grey.withOpacity(.3),
                                height: 100,
                                width: 120,
                                //color: Colors.black,
                                child: Image.network(
                                  'https://www.freepnglogos.com/uploads/cat-png/cat-cendredelune-deviantart-34.png',
                                  height: 100,
                                  width: 80,
                                ),
                              ),
                              Text(
                                'Photo 2',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.grey.withOpacity(.3),
                                height: 100,
                                width: 120,
                                //color: Colors.black,
                                child: Image.network(
                                  'https://www.freepnglogos.com/uploads/cat-png/cat-transparent-images-only-17.png',
                                  height: 100,
                                  width: 80,
                                ),
                              ),
                              Text(
                                'Photo 3',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.grey.withOpacity(.3),
                                height: 100,
                                width: 120,
                                //color: Colors.black,
                                child: Image.network(
                                  'https://www.freepnglogos.com/uploads/cat-png/cat-boarding-24.png',
                                  height: 100,
                                  width: 80,
                                ),
                              ),
                              Text(
                                'Photo 4',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 120,
                                color: Colors.grey.withOpacity(.3),
                                //color: Colors.black,
                                child: Image.network(
                                  'https://www.transparentpng.com/thumb/cat/DTQ8pR-cat-png.png',
                                  height: 100,
                                  width: 80,
                                ),
                              ),
                              Text(
                                'Photo 5',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                ListTile(
                  leading: Container(
                      height: 80,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.shade400),
                      child: Image.network(
                          'https://www.freepnglogos.com/uploads/cat-png/cat-sweety-white-brown-11.png')),
                  title: Text('Photo 1',style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Describtion for Photo 1',style: TextStyle(fontSize: 16),),
                ),
                ListTile(
                  leading: Container(
                      height: 80,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.shade400),
                      child: Image.network(
                        'https://www.freepnglogos.com/uploads/cat-png/cat-paw-images-download-31.png',
                      )),
                  title: Text('Photo 2',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('Describtion for Photo 2',style: TextStyle(fontSize: 16)),
                ),
                ListTile(
                  leading: Container(
                      height: 80,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.shade400),
                      child: Image.network(
                        'https://www.freepnglogos.com/uploads/cat-png/cat-cendredelune-deviantart-34.png',
                      )),
                  title: Text('Photo 3',style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Describtion for Photo 3',style: TextStyle(fontSize: 16)),
                ),
                Center(
                  child: FloatingActionButton(

                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Photos Uploaded Successfully!'),
                        ),
                      );
                    },
                    child: Icon(Icons.upload),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
