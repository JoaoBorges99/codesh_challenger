import 'package:codesh_challenger/dictionary/controller/controller_dictionary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DictionaryApi extends StatefulWidget {
  const DictionaryApi({super.key});

  @override
  State<DictionaryApi> createState() => _DictionaryApiState();
}

class _DictionaryApiState extends State<DictionaryApi> {
  
  ControllerDictionary controller = ControllerDictionary();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dicionario Mobile",),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Insert a word..."
              ),
              onChanged: (value) {
                controller.word = value;
              },
              onSubmitted: (value) async {
                await controller.getWordMeaning();
              },
            ),
          ),
          Observer(
            builder: (_) => Visibility(
              visible: controller.error.message.isNotEmpty,
              child: TextButton.icon(
                icon: const Icon(
                  Icons.cancel,
                  color: Colors.white,
                ),
                label: Text(
                  controller.error.title, 
                  style: const TextStyle(color: Colors.white),
                ),
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red)
                ),
                onPressed: null,
              ),
            )
          ),
          Observer(
            builder: (_) => Visibility(
              visible: controller.wordMeanig.word.isNotEmpty,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.wordMeanig.word.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Divider(),
                  ],
                )
              ),
            ),
          ),
          Observer(
            builder: (_) => Visibility(
              visible: controller.wordMeanig.word.isNotEmpty,
              replacement: Visibility(
                visible: controller.loading,
                child: const Center(child: CircularProgressIndicator())
              ),
              child: Expanded(
                child: ListView.builder(
                  itemCount: controller.wordMeanig.meanings.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Part of Speech: ${controller.wordMeanig.meanings[index].partOfSpeech}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Visibility(
                            visible: controller.wordMeanig.meanings[index].synonyms.isNotEmpty,
                            child: Text("Synonims: ${controller.wordMeanig.meanings[index].synonyms.join(',')}"),
                          ),
                          Visibility(
                            visible: controller.wordMeanig.meanings[index].antonyms.isNotEmpty,
                            child: Text("Antonyms: ${controller.wordMeanig.meanings[index].antonyms.join(',')}"),
                          ),
                        ],
                      ),
                      subtitle: ListTile(
                        title: const Text(
                          "Definitions:",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: controller.wordMeanig.meanings[index].definitions.map((e) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ListTile(
                                title: Text(e.definition),
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}