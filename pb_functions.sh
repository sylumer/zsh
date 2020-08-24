#!/bin/zsh
###########################################
# Mac Pasteboard Extension Functions
# Author: Stephen Millard
# Web Site: https://www.thoughtasylum.com
###########################################

# pbappend: Append text to general pasteboard
# pbappend <text to append>
function pbappend
{
	echo "$(pbpaste)"$1 | pbcopy
}

# pbanlppend: Append text preceded by a new line to general pasteboard
# pbnlappend <text to append>
function pbnlappend
{
	echo "$(pbpaste)""\n"$1 | pbcopy
}

# pbspappend: Append text preceded by a space to general pasteboard
# pbspappend <text to append>
function pbspappend
{
	echo "$(pbpaste) "$1 | pbcopy
}


# pbprepend: Prepend text to general pasteboard
# pbprepend <text to append>
function pbprepend
{
	echo $1"$(pbpaste)" | pbcopy
}

# pbprependnl: Prepend text followed by a new line to general pasteboard
# pbprependnl <text to append>
function pbprependnl
{
	echo $1"\n""$(pbpaste)" | pbcopy
}

# pbprependsp: Prepend text followed by a space to general pasteboard
# pbprependsp <text to append>
function pbprependsp
{
	echo $1" $(pbpaste)" | pbcopy
}

# A set of examples for these functions
function pb_examples
{
	# Appending
	echo \> Put \"foo\" on pasteboard
	echo "foo" | pbcopy
	pbpaste
	echo

	echo \> Append \"bar\" to pasteboard
	pbappend "bar"
	pbpaste
	echo

	echo \> Append \"quz\" to pasteboard on a new line
	pbnlappend "quz"
	pbpaste
	echo

	echo \> Append \"qux\" to pasteboard preceded by a space
	pbspappend "qux"
	pbpaste
	echo

	echo ---

	# Prepending
	echo \> Put \"foo\" on pasteboard
	echo "foo" | pbcopy
	pbpaste
	echo

	echo \> Prepend \"bar\" to pasteboard
	pbprepend "bar"
	pbpaste
	echo

	echo \> Prepend \"quz\" to pasteboard followed by a new line
	pbprependnl "quz"
	pbpaste
	echo

	echo \> Prepend \"qux\" to pasteboard followed by a space
	pbprependsp "qux"
	pbpaste
	echo

	echo ---
	
	# Feed from command
	echo \> Put \"foo\" on pasteboard
	echo "foo" | pbcopy
	pbpaste
	echo
	
	echo \> Feed \"bar\" to append to pasteboard
	pbappend $(echo "bar")
	pbpaste

}

pb_examples


