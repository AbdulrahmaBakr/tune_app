import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/data/tunes_data.dart';
import 'package:music_notes_player_app_setup/widget/tune_key_widget.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('hi'),
        // ),
        body: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView(
        children: [
          Column(
             children: [
              ...tunes.map((e) => TuneKey(
                  onTap: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource(e.sound));
                  },
                  img: e.img))

              // TuneKey(onTap: () {  }, img: '',),
            ],
          ),
        ],
      ),
    ));
  }
}
