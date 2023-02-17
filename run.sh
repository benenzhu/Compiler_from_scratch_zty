# !/usr/local/bin/fish
antlr play/*.g4

javac play/*.java

grun play.Hello tokens -tokens playscript/01_hello.play

