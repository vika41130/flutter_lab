# flutter_lab

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## bloc
- Bloc is event-driven

### Cubit vs Bloc
#### Cubit
- Cubit is simple
- Cubit needs state and function
- Bloc needs state, event and event handler
- Cubit is less code involved
##### Bloc
- Traceability: know state and source of event
- reactive operators to transform event: using transformer
- look up: context.read<BlocA>(); or BlocProvider.of<BlocA>(context);
- create: new instance BlocProvider() or reuse existing instance BlocProvider.value()
