import 'package:flutter/material.dart';
import 'package:wisata_candi/widgets/profile_item_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //TODO : 1. Deklarasikan Variable yang dibutihkan
  bool isSignedIn = true;
  String fullName = "NamePlaceHolder";
  String userName = "UserPlaceHolder";
  int favoriteCandiCount = 0;

  //TODO : 5. Implementasi Fungsi Sign In
  void signIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  //TODO : 6. Implementasi Fungsi Sign Out
  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // TODO : 2. Buat Bagian ProfileHeader Yang berisi gambar profile
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200 - 50),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.deepPurple, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('images/placeholder_image.png')),
                        ),
                        if (isSignedIn)
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt,
                              color: Colors.deepPurple,
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                //TODO : 3. Buat bagian profileinfo yang berisi info Profile
                const SizedBox(
                  height: 20,
                ),
                Divider(color: Colors.deepPurple[100]),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(Icons.lock, color: Colors.amber),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Pengguna',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Text(
                      ': $userName',
                      style: TextStyle(fontSize: 18),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                // 
                ProfileItemInfo(icon: Icons.person, lable: 'nama', value: fullName, iconColor: Colors.blue, showEditIcon: isSignedIn, onEditPressed: () {
                  debugPrint('Icon Edit Ditekan');
                },
                ),
                SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100],),
                SizedBox(height: 4,),
                ProfileItemInfo(icon: Icons.favorite, lable: 'Favorit', value: favoriteCandiCount > 0 ? '$favoriteCandiCount':' ',iconColor: Colors.red)
                //TODO : 4. Buat ProfileActions yang berisi TextButton sign in/out\
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                isSignedIn
                    ? TextButton(
                        onPressed: signOut, child: const Text('Sign Out'))
                    : TextButton(
                        onPressed: signIn, child: const Text('Sign in')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
