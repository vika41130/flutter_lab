##### when
- pushNewScope/initScope: pass function
- when register: @LazySingleton(dispose: ) or @Singleton(dispose: )
##### pushNewScope/initScope
- run first
##### register with LazySingleton/Singleton
- dispose for each Class
- run after
##### shadow state
- an object is shadowed by another
- example: pushNewScope or Navigator.push
