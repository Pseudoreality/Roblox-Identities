# LocalGui

## Description
Used for a few actions within the Studio UI, such as evaluating expressions on certain properties before passing the values off to the thread mentioned in the first bullet of [`Anonymous`](0%20-%20Anonymous.md)'s notes.

## Information
- **Accessible Capabilities:**
    - [`PluginSecurity`](../Capabilities/1%20-%20PluginSecurity.md)
    - [`LocalUserSecurity`](../Capabilities/3%20-%20LocalUserSecurity.md)
- **Identity:** 1
- **Related Instances:** N/A

## Notes
- Can be used to execute some limited code because of the behavior mentioned in the description.
  - Example: Writing `printidentity()` in certain properties (`BasePart.Size` for example) and pressing enter will output `Current identity is 1`
  - Writing `error()` will show that the name of the script running is `expressionEval`
