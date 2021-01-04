@echo off
set grammarname=%1
set inputfile=%2
set startrule=%3

java -jar .\antlr-4.8-complete.jar .\%grammarname%.g4
javac -cp "./antlr-4.8-complete.jar"  %grammarname%*.java
java -cp ".;./antlr-4.8-complete.jar"  org.antlr.v4.gui.TestRig %grammarname% %startrule% %inputfile% -gui
del /f %grammarname%*.java %grammarname%*.class
del /f %grammarname%*.interp %grammarname%*.tokens