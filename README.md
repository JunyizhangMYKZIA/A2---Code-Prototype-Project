# A2---Code-Prototype-Project
# Flappy Bird — Godot Project

##Project Overview
This is a simple Flappy Bird clone game developed using the Godot Engine.
Players control the bird by clicking or pressing the spacebar to fly and avoid randomly generated obstacles.
This project aims to practice 2D scene creation, node logic control, and signal connection, and understand the design of game loops and user experience during the production process. 
---

## Game Mechanism
- Operation Method: Click the mouse or press the space bar to make the bird rise; release to fall.
- Objective: Survive for as long as possible, avoiding colliding with obstacles or falling to the ground.
- Failure Condition: The game ends if the bird hits an obstacle or falls to the ground.
- Restart: Click the "Restart" button on the end screen to start the game again.
---
## Project Structure project/
├── script/
│ ├── play.gd # Main game logic script
│ ├── area_2d.gd # Bird control script
│ ├── barrier.gd # Logic for generating and moving obstacles
│ ├── end.gd # Game over scene 
├── scenes/
│ ├── play.tscn # Main game scene
│ ├── end.tscn # Game over scene
│ └── area_2d.tscn # Bird prefab
 ├── assets/
│ ├── sprites/ # Image resources (background, bird, water pipe)
│ └── sounds/ # Sound effects ├── README.md
└── project.godot # Godot project file
---

## Technical Details
- Developed based on the **Godot 4.x** engine.
- Core logic:
- `_process()` implements obstacle movement and collision detection;
- `change_scene_to_file()` is used to switch to the ending scene;
- `PackedScene.instantiate()` is used to dynamically generate characters and obstacles.
- Learning content includes: node hierarchy management, script instantiation, and signal debugging. 
---

## Development Reflection
- **Classroom Feedback in Week 5**: The teacher pointed out that the game lacked prompts for "start" and "restart".
→ I added text explanations and a restart button in the game interface, enhancing the player's understanding experience.
- During testing, it was discovered that the movement speed of obstacles did not match the window size.
→ This issue was resolved by adjusting the movement values in `_process(delta)`.
- During the production process, my understanding of the Godot node system, signal transmission mechanism, and physical boundary detection was deepened.
- The next plan is to implement the scoring system and sound effect feedback to make the game experience more complete. 
---

## References 
Fullerton, T. (2024). Game Design Workshop : A Playcentric Approach to Creating Innovative Games. (5th ed.). CRC Press LLC.
Mayer-Schönberger, V. (2013). Big data : a revolution that will transform how we live, work, and think (K. Cukier, Ed.). Houghton Mifflin Harcourt.
Norman, D. A. (1998). The invisible computer : why good products can fail, the personal computer is so complex, and information appliances are the solution . MIT Press.
Petzold, C. (2023). Code : the hidden language of computer hardware and software (Second edition.). Microsoft Press.
Resnick, M. (2017). Lifelong kindergarten : cultivating creativity through projects, passion, peers, and play (K. Robinson, Ed.). The MIT Press.

---

##  Author Information
**Author**: Zhang Junyi
**Course**: UTS 52685 – Creative Coding
**Engine Version**: Godot 4.5
**Development Time**: October 2025 
---

## Operating Method
1. Open the **Godot Engine**.
2. Click "Import Project" and select the file.
3. Run the project (`▶ Run Project`) to start the game.
