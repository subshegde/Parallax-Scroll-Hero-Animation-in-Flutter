import 'package:flutter/material.dart';
import 'package:flutter_animations/pages/parallax_scroll_effect-02/model/locationModel.dart';
import 'package:flutter_animations/pages/parallax_scroll_effect-02/pages/hero&animated-circular-fab/hero.dart';
import 'package:flutter_animations/pages/parallax_scroll_effect-02/pages/parallax/parallax.dart';

class ParallaxScrollEffectList extends StatefulWidget {
  const ParallaxScrollEffectList({super.key});

  @override
  State<ParallaxScrollEffectList> createState() => _ParallaxScrollEffectListState();
}

class _ParallaxScrollEffectListState extends State<ParallaxScrollEffectList> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(children: [

        


        Expanded(
          child: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context,index){
              var item = locations[index];
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HeroDemo(location: item,)));
                },
                child: LocationItem(
                  name: item.name,
                  country: item.place,
                  imageUrl: item.imageUrl,
                ),
              );
          })
          ,)
      ],),),
    );
  }
}

class LocationItem extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();
  LocationItem({super.key,required this.name,required this.country,required this.imageUrl});

  @override
  State<LocationItem> createState() => _LocationItemState();
}

class _LocationItemState extends State<LocationItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: AspectRatio(aspectRatio: 21/9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            buildParallaxBackground(context,widget._backgroundImageKey,widget.name,widget.imageUrl),
            buildGradient(),
            buildTitleAndSubtitle(widget.name,widget.country),
          ],
        ),
      ),
      
      ),
    );
  }

  Widget buildParallaxBackground(BuildContext context,GlobalKey key,String name,String imageUrl){
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: key,
      ),
      children: [
        Hero(
          tag: name,
          child: Image.network(imageUrl, key: key, fit: BoxFit.cover)),
      ],
    );
  }

  Widget buildGradient(){
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent,Colors.black.withOpacity(.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [.6,.95]
            )
        )
      )
    );
  }

  Widget buildTitleAndSubtitle(String name, String country){
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
        Text(country,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
        )
      ],)
    );
  }
}