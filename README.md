# Ouroburrows (BUGGED)
[working demo](https://kiptunes.itch.io/ouroburrows)\
[working repo](github.com/kiptunes/ouroburrows)

## Context (I am so sorry)
I tried to create a puzzle platformer for [Hack Club Parthenon](https://athena.hackclub.com) running Nov. 14th-16th, but unfortunately I sunk a disproportionate amount of time trying to implement one mechanic and was not able to ship a playable version of my project on the day of the deadline. This is the version that I uploaded to itch on the 16th, which is still untouched at [this link](https://kiptunes.itch.io/ouroburrows-prototype). For a version that actually shows the movement I was trying to achieve, instead go to [this link](https://kiptunes.itch.io/ouroburrows). The commit history should also show that I started working on this project on the 14th.

## Concept
This was meant to be a puzzle platformer that takes the classic game snake and inverts the controls such that you don't control the snake, you control where the pellets go. In this game, the pellets are represented by coins, which can be picked up and placed back down again by the player character. As I imagined it, the game would have played in two stages---the first, where you place coins, and the second, where the snake actually enters the level. 

During the second stage, the aim is to get the snake to run into itself, after which you as the player character can use the new surfaces created by the snake's body to reach the goal. Here is the very first (very rough) mockup that I made.
![Initial concept and level mockup of the game.](/readme_files/mockup.jpeg)

The mechanic that I had trouble implementing, as mentioned earlier, was getting the player to navigate using the walls. The actual "sticking to walls" part was fine, it was just surprisingly difficult to get the character to round an outer corner consistently (and less surprisingly, very few godot forum help/tutorials on this specific subject). In retrospect it was an awful use of my time but it is what it is : (. Please refer to my "working demo" link at the top of this README for a working implementation of what I was trying to achieve.

Here are some more assets I made mostly when I got too frustrated with debugging:
| CP1                                    | CP2                                    |
| -------------------------------------- | -------------------------------------- |
|![Player walk animation holding two coins.](/readme_files/walkcoins.gif) <-- hard to see but this is the player walking while holding two coins. |
| ![Splash 1](/readme_files/splash1.png) | ![Splash 2](/readme_files/splash2.png) |
| ![Tilemap 1](/readme_files/tilemap1.png)| ![Tilemap 2](/readme_files/tilemap2.png) |

## Thank you!
Everyone at Parthenon was so nice. I am so grateful that I got to be there. I hope this suffices as an explanation as to why my ship was so defunct---if further proof is required as to how I spent my time, I have emails that I sent to myself and I talked to a few people at Parthenon who would be able to confirm that I was working on this project on the 14th-16th. 

