# User Stories

## Version 1.0.0: Basic Functionality

| ID--GAME-1          | As a Player, I want to be able to navigate a start menu to access different parts of the game. |
| ------------------- | ---------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                             |
|                     | - **Functionality:** Start Menu                                                                |
|                     | - **Goal:** Access Start Game, Settings.                                                       |
| Acceptance Criteria | 1. Implement Start Menu UI                                                                     |
|                     | 2. Create buttons for starting the game and accessing settings.                                |
| Notes               |                                                                                                |
| Tasks               | - [ ] Design the Start Menu UI                                                                 |
|                     | - [ ] Implement button functionality.                                                          |

| ID--GAME-2          | As a Player, I want to manage my game saves through a Save Menu.       |
| ------------------- | ---------------------------------------------------------------------- |
| Description         | - **User:** Player                                                     |
|                     | - **Functionality:** Save Menu                                         |
|                     | - **Goal:** View, create, and delete game saves.                       |
| Acceptance Criteria | 1. Implement Save Menu UI                                              |
|                     | 2. Create functionality for new save, delete save, and play from save. |
| Notes               |                                                                        |
| Tasks               | - [ ] Design the Save Menu UI                                          |
|                     | - [ ] Implement save management functionality.                         |

| ID--GAME-3          | As a Player, I want to interact with basic Node types like Particle and Border in the game. |
| ------------------- | ------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                          |
|                     | - **Functionality:** Basic Node Types                                                       |
|                     | - **Goal:** Utilize Particle and Border nodes for gameplay.                                 |
| Acceptance Criteria | 1. Implement Particle and Border nodes                                                      |
|                     | 2. Ensure Particle nodes abide by physics laws.                                             |
| Notes               |                                                                                             |
| Tasks               | - [ ] Implement basic Node classes.                                                         |
|                     | - [ ] Implement physics for Particle nodes.                                                 |

| ID--GAME-4          | As a Player, I want to manipulate Particle properties to observe physics interactions. |
| ------------------- | -------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                     |
|                     | - **Functionality:** Particle Properties                                               |
|                     | - **Goal:** Adjust properties like mass, velocity, and temperature.                    |
| Acceptance Criteria | 1. Implement UI for adjusting particle properties                                      |
|                     | 2. Ensure property adjustments affect particle behavior.                               |
| Notes               |                                                                                        |
| Tasks               | - [ ] Create UI elements for property adjustments.                                     |
|                     | - [ ] Link property adjustments to particle physics.                                   |

| ID--GAME-5          | As a Player, I want to see and adjust the cursor size using the scroll wheel. |
| ------------------- | ----------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                            |
|                     | - **Functionality:** Cursor Adjustment                                        |
|                     | - **Goal:** Adjust cursor size for precise interaction.                       |
| Acceptance Criteria | 1. Implement cursor size adjustment functionality.                            |
|                     | 2. Ensure size adjustment is intuitive and responsive.                        |
| Notes               |                                                                               |
| Tasks               | - [ ] Implement scroll wheel listener for cursor size adjustment.             |
|                     | - [ ] Update cursor size in real-time.                                        |

| ID--GAME-6          | As a Player, I want to access a palette to choose different elements for the simulation. |
| ------------------- | ---------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                       |
|                     | - **Functionality:** Element Palette                                                     |
|                     | - **Goal:** Select different elements for gameplay.                                      |
| Acceptance Criteria | 1. Implement UI for the element palette.                                                 |
|                     | 2. Populate palette with basic elements.                                                 |
| Notes               |                                                                                          |
| Tasks               | - [ ] Design the UI for the element palette.                                             |
|                     | - [ ] Populate palette with selectable elements.                                         |

| ID--GAME-7          | As a Player, I want to use various tools to interact with the game environment.      |
| ------------------- | ------------------------------------------------------------------------------------ |
| Description         | - **User:** Player                                                                   |
|                     | - **Functionality:** Tools                                                           |
|                     | - **Goal:** Utilize Border Eraser, Border, and None tools for gameplay interactions. |
| Acceptance Criteria | 1. Implement UI for tool selection.                                                  |
|                     | 2. Create functionality for each tool.                                               |
| Notes               |                                                                                      |
| Tasks               | - [ ] Design the UI for tool selection.                                              |
|                     | - [ ] Implement functionality for Border Eraser, Border, and None tools.             |

| ID--GAME-8          | As a Player, I want to interact with particles in different states like Gas, Liquid, Solid, and Plasma. |
| ------------------- | ------------------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                                      |
|                     | - **Functionality:** Particle States                                                                    |
|                     | - **Goal:** Explore and interact with particles in various states.                                      |
| Acceptance Criteria | 1. Implement state change functionality for particles.                                                  |
|                     | 2. Ensure correct physics interactions for each state.                                                  |
| Notes               |                                                                                                         |
| Tasks               | - [ ] Design and implement state change functionality.                                                  |
|                     | - [ ] Adjust physics engine to handle different states.                                                 |

| ID--GAME-9          | As a Player, I want to interact with basic particles like water, sand, and fire. |
| ------------------- | -------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                               |
|                     | - **Functionality:** Basic Particles                                             |
|                     | - **Goal:** Explore and interact with basic particle types.                      |
| Acceptance Criteria | 1. Implement basic particles in the game.                                        |
|                     | 2. Ensure correct physics interactions for each particle type.                   |
| Notes               |                                                                                  |
| Tasks               | - [ ] Design and implement basic particles.                                      |
|                     | - [ ] Adjust physics engine to handle interactions.                              |

| ID--GAME-10         | As a Player, I want to interact with Force Nodes to manipulate particle behaviors. |
| ------------------- | ---------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                 |
|                     | - **Functionality:** Force Nodes                                                   |
|                     | - **Goal:** Use Gravity, Velocity, etc., to affect gameplay.                       |
| Acceptance Criteria | 1. Implement Force Nodes in the game.                                              |
|                     | 2. Ensure correct physics interactions for each Force Node type.                   |
| Notes               |                                                                                    |
| Tasks               | - [ ] Design and implement Force Nodes.                                            |
|                     | - [ ] Adjust physics engine to handle interactions with Force Nodes.               |

| ID--GAME-11         | As a Player, I want to control Stick Men using keyboard inputs for interactive gameplay. |
| ------------------- | ---------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                       |
|                     | - **Functionality:** Stick Men Control                                                   |
|                     | - **Goal:** Control Stick Men using WASD and Arrow Keys.                                 |
| Acceptance Criteria | 1. Implement Stick Men in the game.                                                      |
|                     | 2. Implement keyboard controls for Stick Men movement.                                   |
| Notes               |                                                                                          |
| Tasks               | - [ ] Design and implement Stick Men characters.                                         |
|                     | - [ ] Implement keyboard input for controlling Stick Men.                                |

## Version 2.0.0: Modding API

| ID--MOD-1           | As a Developer, I want to extend the game's functionality through modding. |
| ------------------- | -------------------------------------------------------------------------- |
| Description         | - **User:** Developer                                                      |
|                     | - **Functionality:** Modding API                                           |
|                     | - **Goal:** Add new content or modify existing content through mods.       |
| Acceptance Criteria | 1. Implement modding API.                                                  |
|                     | 2. Ensure mods can be easily added to the mods folder.                     |
| Notes               |                                                                            |
| Tasks               | - [ ] Design and implement the modding API.                                |
|                     | - [ ] Create a designated mods folder for easy mod installations.          |

| ID--MOD-2           | As a Developer, I want to program mods using different scripting languages like GDScript, Python, or Lua. |
| ------------------- | --------------------------------------------------------------------------------------------------------- |
| Description         | - **User:** Developer                                                                                     |
|                     | - **Functionality:** Scripting Language Support                                                           |
|                     | - **Goal:** Create mods using preferred scripting language.                                               |
| Acceptance Criteria | 1. Implement support for GDScript, Python, and Lua.                                                       |
|                     | 2. Ensure smooth mod creation and integration regardless of scripting language used.                      |
| Notes               | Start with GDScript support.                                                                              |
| Tasks               | - [ ] Implement scripting language support in the modding API.                                            |
|                     | - [ ] Test mod creation and integration for each supported language.                                      |

| ID--MOD-3           | As a Mod Developer, I want to access comprehensive API documentation for easier mod development. |
| ------------------- | ------------------------------------------------------------------------------------------------ |
| Description         | - **User:** Mod Developer                                                                        |
|                     | - **Functionality:** API Documentation                                                           |
|                     | - **Goal:** Understand and utilize the modding API effectively.                                  |
| Acceptance Criteria | 1. Create detailed and accessible documentation for the modding API.                             |
|                     | 2. Ensure documentation is updated with any API changes.                                         |
| Notes               |                                                                                                  |
| Tasks               | - [ ] Write comprehensive documentation for the modding API.                                     |
|                     | - [ ] Set up a system for keeping the documentation updated.                                     |

## Version 3.0.0: Multiplayer Support

| ID--MULTI-1         | As a Player, I want to experience multiple cursors for collaborative gameplay. |
| ------------------- | ------------------------------------------------------------------------------ |
| Description         | - **User:** Player                                                             |
|                     | - **Functionality:** Multiple Cursors                                          |
|                     | - **Goal:** Engage in collaborative gameplay with others.                      |
| Acceptance Criteria | 1. Implement functionality for multiple cursors.                               |
|                     | 2. Ensure smooth interaction and synchronization between cursors.              |
| Notes               |                                                                                |
| Tasks               | - [ ] Design and implement multi-cursor support.                               |
|                     | - [ ] Test synchronization and interactions between multiple cursors.          |

| ID--MULTI-2         | As a Player, I want to start or join a P2P Peer or Server for multiplayer gameplay.     |
| ------------------- | --------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                      |
|                     | - **Functionality:** P2P Peer/Server                                                    |
|                     | - **Goal:** Play with others via a peer-to-peer connection or server-based multiplayer. |
| Acceptance Criteria | 1. Implement P2P and Server connection options.                                         |
|                     | 2. Ensure stable connections and gameplay synchronization.                              |
| Notes               |                                                                                         |
| Tasks               | - [ ] Design and implement P2P Peer and Server connection options.                      |
|                     | - [ ] Test connection stability and gameplay synchronization.                           |

| ID--MULTI-3         | As a Player, I want to see multiple cursors during multiplayer gameplay for better interaction. |
| ------------------- | ----------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                              |
|                     | - **Functionality:** Multiplayer Cursors                                                        |
|                     | - **Goal:** Visualize and interact with other players’ cursors during gameplay.                 |
| Acceptance Criteria | 1. Display multiple cursors with distinct identifiers.                                          |
|                     | 2. Ensure real-time update and synchronization of all cursors.                                  |
| Notes               |                                                                                                 |
| Tasks               | - [ ] Implement distinct identifiers for each cursor.                                           |
|                     | - [ ] Test real-time update and synchronization of multiplayer cursors.                         |

| ID--MULTI-4         | As a Player, I want to share, list publicly, load, and update game saves similarly to The Powder Toy. |
| ------------------- | ----------------------------------------------------------------------------------------------------- |
| Description         | - **User:** Player                                                                                    |
|                     | - **Functionality:** Save Sharing and Management                                                      |
|                     | - **Goal:** Share and manage game saves with others, update owned saves.                              |
| Acceptance Criteria | 1. Implement functionality to share and list game saves publicly.                                     |
|                     | 2. Allow loading of shared saves with additional update functionality for the owner.                  |
| Notes               |                                                                                                       |
| Tasks               | - [ ] Design and implement save sharing and listing UI.                                               |
|                     | - [ ] Implement backend support for save management, including load and update functionality.         |
