1st smoke test for installation of the compilers:

C
C++
Fortran
Objective C
Go
Rust

Currently used to show breakage in Java SDK:

$ javac h.java
$ java h

Hello, world!

$ jar cfve h.jar h h.class
$ java -jar h.jar

Hello, world!

$ chmod +x h.jar
$ ./h.jar

./h.jar: Exec format error

$ java -version

Works: java version "1.6.0_35"
Broken: java version "1.8.*"
