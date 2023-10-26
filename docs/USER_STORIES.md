# User Stories

# Version 0.1.0

| ID--GAME-1          | As a Player, I want a Main Menu where I can Create, Delete and Play Worlds.                    |
| ------------------- | ---------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                             |
|                     | - **Functionality:** Main Menu                                                                 |
|                     | - **Goal:** Create, Delete, Play Worlds.                                                       |
| Acceptance Criteria | 1. Design and Implement Main Menu UI                                                           |
|                     | 2. Buttons for creating, deleting, and playing worlds.                                         |
| Notes               |                                                                                                |
| Tasks               | - [ ] Design Main Menu UI                                                                      |
|                     | - [ ] Implement world management functions.                                                    |

---

| ID--GAME-2          | As a Player, I want a Create World Menu to specify world details like Name, Seed, and Type.    |
| ------------------- | ---------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                             |
|                     | - **Functionality:** World Creation                                                            |
|                     | - **Goal:** Specify World Name, Seed, Worldgen Type.                                           |
| Acceptance Criteria | 1. Design World Creation UI                                                                    |
|                     | 2. Include input for name, seed, and dropdown for Worldgen type.                               |
|                     | 3. Disable "Create" button for invalid names.                                                  |
| Notes               |                                                                                                |
| Tasks               | - [ ] Design World Creation UI                                                                 |
|                     | - [ ] Implement input validation and UI functionality.                                         |

---

| ID--GAME-3          | As a Player, I want the ability to save and load worlds for persistent gameplay.               |
| ------------------- | ---------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                             |
|                     | - **Functionality:** Game Persistence                                                          |
|                     | - **Goal:** Save and Load Worlds.                                                              |
| Acceptance Criteria | 1. Implement save functionality for worlds                                                     |
|                     | 2. Implement load functionality for worlds                                                     |
| Notes               |                                                                                                |
| Tasks               | - [ ] Develop a saving mechanism                                                               |
|                     | - [ ] Implement a loading mechanism.                                                           |

---

| ID--GAME-4          | As a Player, I want an interactive flat world generated consisting of nodes.                   |
| ------------------- | ---------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                             |
|                     | - **Functionality:** World Generation                                                          |
|                     | - **Goal:** Generate Flat World.                                                               |
| Acceptance Criteria | 1. Implement flat world generation mechanism                                                  |
| Notes               |                                                                                                |
| Tasks               | - [ ] Develop the world generation algorithm                                                   |
|                     | - [ ] Test flat world generation.                                                              |

---

| ID--GAME-5          | As a Player, I want basic controls for movement and orientation in the game world.             |
| ------------------- | ---------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                             |
|                     | - **Functionality:** Player Movement                                                           |
|                     | - **Goal:** WASD controls for movement, mouse movement for rotation and yaw.                    |
| Acceptance Criteria | 1. Implement WASD controls                                                                     |
|                     | 2. Implement mouse controls for rotation and yaw                                               |
| Notes               |                                                                                                |
| Tasks               | - [ ] Code player movement controls                                                            |
|                     | - [ ] Implement mouse controls for player orientation.                                         |

---

| ID--GAME-6          | As a Player, I want a Pause Menu to access in-game options when pressing the Escape key.       |
| ------------------- | ---------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                             |
|                     | - **Functionality:** Pause Menu                                                                |
|                     | - **Goal:** Access Continue, Exit to Menu, Exit to OS.                                         |
| Acceptance Criteria | 1. Design Pause Menu UI                                                                        |
|                     | 2. Implement the options: Continue, Exit to Menu, Exit to OS                                   |
| Notes               |                                                                                                |
| Tasks               | - [ ] Design the Pause Menu UI                                                                 |
|                     | - [ ] Implement the Pause Menu functionality.                                                  |

---

| ID--GAME-7          | As a Player, I want the ability to break and place voxels to interact with the game environment. |
| ------------------- | -----------------------------------------------------------------------------------------------|
| Description         | - **User:** Player                                                                              |
|                     | - **Functionality:** Voxel Breaking and Placing                                                 |
|                     | - **Goal:** Interact with the game world by modifying voxel structures.                          |
| Acceptance Criteria | 1. Implement voxel breaking mechanics                                                           |
|                     | 2. Implement voxel placing mechanics                                                            |
|                     | 3. Ensure smooth transition between breaking and placing.                                       |
| Notes               |                                                                                                |
| Tasks               | - [ ] Develop voxel breaking functionality.                                                    |
|                     | - [ ] Develop voxel placing functionality.                                                      |
|                     | - [ ] Test the transition between breaking and placing.                                         |

---

| ID--GAME-8          | As a Player, I want to see a black outline on the voxel I'm looking at for better interaction clarity. |
| ------------------- | -----------------------------------------------------------------------------------------------------|
| Description         | - **User:** Player                                                                                   |
|                     | - **Functionality:** Voxel Highlight on Look                                                         |
|                     | - **Goal:** Enhance player's clarity when interacting with individual voxels.                         |
| Acceptance Criteria | 1. Implement a shader or functionality that highlights a voxel with a black frame.                    |
|                     | 2. Ensure the highlight is only active on the looked-at voxel.                                       |
|                     | 3. The highlight should not cause performance drops or visual issues.                                |
| Notes               | Consider shader optimizations for smoother performance.                                              |
| Tasks               | - [ ] Design the shader or functionality for voxel highlighting.                                     |
|                     | - [ ] Integrate the highlight functionality with player's line of sight.                             |
|                     | - [ ] Optimize and test for performance and visual clarity.                                          |

---