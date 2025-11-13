# LocalGui

## Description
Used for a few actions within the Studio UI, such as evaluating expressions on certain properties before passing the values off to the thread mentioned in the first bullet of [`Anonymous`](00%20-%20Anonymous.md)'s notes.

## Information
- **Accessible Capabilities:**
    - [`Plugin`](../Capabilities/00%20-%20Plugin.md)
    - [`LocalUser`](../Capabilities/01%20-%20LocalUser.md)
- **Identity:** 1
- **Related Instances:** N/A

## Notes
- Can be used to execute some limited code because of the behavior mentioned in the description.
  - Example: Writing `printidentity()` in certain properties (`BasePart.Size` for example) and pressing enter will output `Current identity is 1`
  - Writing `error()` will show that the script running as `LocalGui` is named "expressionEval"
