# That Hat Pack

This is a simple datapack that lets you wear any item/block on your head, using the new `equippable` stack component.  To make an item a hat, just hold the desired item in your main hand and run
```
/trigger makehat
```
Now that item is equippable onto your head slot!  If you ever want to remove the equippability of that item, then run
```
/trigger unhat
```
And that's it!

## Changes

 - Will now ask for confirmation before turning an item with lore or custom data into a hat
 - Removes the lore & custom data tags entirely when unmaking a hat, so that ex-hats stack with normal items
 - Removed update function since it is no longer needed
