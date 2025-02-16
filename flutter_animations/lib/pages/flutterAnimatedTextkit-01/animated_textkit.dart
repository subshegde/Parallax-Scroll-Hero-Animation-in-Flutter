import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Names{
  String name;
  Color color;

  Names({required this.name, required this.color});
}

class AnimatedTextKitPage extends StatefulWidget {
  const AnimatedTextKitPage({super.key});

  @override
  State<AnimatedTextKitPage> createState() => _AnimatedTextKitPageState();
}

class _AnimatedTextKitPageState extends State<AnimatedTextKitPage> {

  final List<Names> names = [
    Names(name: 'Rotate', color: Colors.orange),
    Names(name: 'Fade', color: Colors.blue),
    Names(name: 'Typer', color: Colors.green),
    Names(name: 'Typewriter', color: Colors.black),
    Names(name: 'Scale', color: Colors.pink),
    Names(name: 'Colorize', color: Colors.white.withOpacity(.2)),
    Names(name: 'Wavy', color: Colors.brown),
    Names(name: 'Flicker', color: Colors.teal),
    
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Animation TextKit'),
        foregroundColor: Colors.black,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(child: Column(children: [
        Expanded(child: 
        ListView.builder(
          itemCount: names.length,
          itemBuilder: (context,index){
            var item = names[index];
            return Item(
              color: item.color,
              name: item.name,
            );
        })
        )
      ],)),
    );
  }
}

class Item extends StatefulWidget {
  final String name;
  final Color color;
  const Item({super.key,required this.color,required this.name});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Horizon',
);

    return Container(
  height: 100,
  padding: const EdgeInsets.all(20),
  margin: const EdgeInsets.all(5),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: widget.color,
  ),
  child: widget.name == "Rotate"
      ? Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 20.0, height: 100.0),
              const Text(
                'Be',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Horizon',
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    RotateAnimatedText('INNOVATIVE'),
                    RotateAnimatedText('CREATIVE'),
                    RotateAnimatedText('ADVENTUROUS'),
                  ],
                  onTap: () {},
                ),
              ),
            ],
          ),
        )
      : widget.name == 'Fade'
          ? Center(
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FadeAnimatedText('Push Limits!'),
                    FadeAnimatedText('Never Stop!'),
                    FadeAnimatedText('Stay Focused!'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            )
          : widget.name == 'Typer'
              ? Center(
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Bobbers',
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText('Success is not final,'),
                        TyperAnimatedText('Failure is not fatal,'),
                        TyperAnimatedText('It is the courage to continue that counts'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                )
              : widget.name == 'Typewriter'
                  ? Center(
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Agne',
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            TypewriterAnimatedText('Learn from yesterday,'),
                            TypewriterAnimatedText('Live for today,'),
                            TypewriterAnimatedText('Hope for tomorrow'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    )
                  : widget.name == 'Scale'
                      ? Center(
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Canterbury',
                            ),
                            child: AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                ScaleAnimatedText('Dream'),
                                ScaleAnimatedText('Create'),
                                ScaleAnimatedText('Inspire'),
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                        )
                      : widget.name == 'Colorize'
                          ? Center(
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  ColorizeAnimatedText(
                                    'Albert Einstein',
                                    textStyle: colorizeTextStyle,
                                    colors: colorizeColors,
                                  ),
                                  ColorizeAnimatedText(
                                    'Nikola Tesla',
                                    textStyle: colorizeTextStyle,
                                    colors: colorizeColors,
                                  ),
                                  ColorizeAnimatedText(
                                    'Marie Curie',
                                    textStyle: colorizeTextStyle,
                                    colors: colorizeColors,
                                  ),
                                ],
                                isRepeatingAnimation: true,
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                            )
                          : widget.name == 'Wavy'
                              ? Center(
                                  child: DefaultTextStyle(
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                      ),
                                      child: AnimatedTextKit(
                                        animatedTexts: [
                                          WavyAnimatedText('Stay Strong'),
                                          WavyAnimatedText('Be Yourself'),
                                        ],
                                        isRepeatingAnimation: true,
                                        onTap: () {
                                          print("Tap Event");
                                        },
                                      )),
                                )
                              : widget.name == 'Flicker'
                                  ? Center(
                                      child: DefaultTextStyle(
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 7.0,
                                              color: Colors.white,
                                              offset: Offset(0, 0),
                                            ),
                                          ],
                                        ),
                                        child: AnimatedTextKit(
                                          repeatForever: true,
                                          animatedTexts: [
                                            FlickerAnimatedText('Flicker It Up!'),
                                            FlickerAnimatedText('Shine Bright!'),
                                            FlickerAnimatedText("Live the Moment!"),
                                          ],
                                          onTap: () {
                                            print("Tap Event");
                                          },
                                        ),
                                      ),
                                    )
                                  : const SizedBox(),
);

  }
}