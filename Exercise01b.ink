/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance of a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
* [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> west_tunnel_lit
* [Go back] -> cave_mouth
-> END

==== torch_pickup ==
You now have a torch. May it light the way
* [Go back] -> cave_mouth
-> END

=== east_tunnel_lit ===
The light of your torch glints off of the thousands of coins in the room.
-> END

=== west_tunnel_lit ===
The light of your torch reveals a cliff at the edge of your feet 
There is a long rope that hangs from the top of the cave and a wooden ladder that is long enough to reach the other side of the cave.
+ [Use the rope] -> rope_choice
+ [Use the ladder] -> ladder_choice
-> END

=== rope_choice ===
You use the rope to safely get to the other side. 
As you continue your journey through the cave. {not grab_sword: There is a rusty sword hanging on the wall.} The cave breaks off into two different tunnels
+ [Go left] -> go_left
* [Go right] -> go_right
* [Grab the sword] -> grab_sword
-> END

=== ladder_choice ===
The wooden ladder crumbles after years of decay. You fall through and die
* [Go back] -> west_tunnel_lit
-> END

=== go_left ===
You encounter a hostile creature. {grab_sword: You manage to fend it off with your rusty sword. As you continue your journey through the cave you come across a large door} {not grab_sword: You try to out run it but it catches up to you and kills you}
* {grab_sword} [Open it] -> open_door
* [Go back] -> rope_choice
-> END

=== go_right ===
As you venture through the cave you come across a dead end
* [Go back] -> rope_choice
-> END

=== grab_sword ===
You have picked up the sword
* [Go back] -> rope_choice
-> END

=== open_door ===
On the other side of the door are thousands of gold coins and artifacts. You are overjoyed as your hardwork has payed off.
-> END




