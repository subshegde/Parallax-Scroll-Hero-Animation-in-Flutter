# Flutter Parallax Scroll Effect with Hero Animation

This Flutter project demonstrates the implementation of a **Parallax Scroll Effect** combined with **Hero Animation** for a smooth, immersive user experience. It features a dynamic list of locations with a parallax effect on the background images, and a Hero animation for seamless transitions between screens.

## Features

- **Parallax Scroll Effect**: Creates a visually dynamic experience where the background images move at a different speed from the foreground content, giving a sense of depth.
- **Hero Animation**: Smoothly transitions images between different screens, making the app feel more interactive and engaging.
- **Custom Layouts**: Each list item is designed with a responsive layout to fit different screen sizes and orientations.
- **Smooth Navigation**: Tapping on a location takes you to a new screen, where the image expands with a hero animation.

## Video

https://github.com/user-attachments/assets/1caf51b2-0548-44c5-9820-ee7f9d39f62c

# How It Works

    ParallaxScrollEffectList:
        Displays a list of locations with a background image that moves at a different speed while scrolling, creating the parallax effect.
        When a location is tapped, it navigates to the HeroDemo screen, where the Hero animation expands the image.

    Hero Animation:
        The image of each location is wrapped in a Hero widget, which allows the transition between the list and detail screen to be smooth and visually pleasing.

    ParallaxFlowDelegate:
        Custom delegate used to adjust the background image based on the scroll position, creating the illusion of depth.

    HeroDemo:
        A detailed view screen that animates the image of the location using the Hero widget.

Happy Coding
