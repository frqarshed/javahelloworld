FROM java:7

#COPY Helloworld.java /

#RUN javac Helloworld.java

#ENTRYPOINT ["java", "Helloworld"]

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin

RUN javac -d bin src/Helloworld.java

ENTRYPOINT ["java", "-cp", "bin", "Helloworld"]

