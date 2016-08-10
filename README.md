docker-java
===========

Docker Image packaging for Java, built on Ubuntu base images.

Usage
-----

Similar to the [official Java][1] image:

```
FROM seeruk/java:openjdk-java8
COPY . /app
WORKDIR /app
RUN javac Main.java
CMD ["java", "Main"]
```

Notes
-----

The Oracle image(s) automatically accept the license agreement for you. By using these images you are agreeing to the terms and conditions of their license. (For this reason, these images may not be around forever, and I recommend using the OpenJDK image(s) instead where possible).

License
-------

MIT

Contributing
------------

Feel free to open a [pull request][2], or file an [issue][3] on Github. I always welcome contributions as long as they're for the benefit of all (potential) users of this image.

If you're unsure about anything, feel free to ask about it in an issue before you get your heart set on fixing it yourself.

[1]: https://hub.docker.com/_/java/
[2]: https://github.com/SeerUK/docker-java/pulls
[3]: https://github.com/SeerUK/docker-java/issues
