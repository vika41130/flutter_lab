#### for components of state management
- Controller, State, Builder, Dependency manager
#### Controllder
- manage state and business logic
- notify state change to Builder
#### Builder
- listen state change
- call setState -> rebuild widget tree
#### State
- data in memory
#### Dependency Manager
- create/manage instance of dependencies
- 