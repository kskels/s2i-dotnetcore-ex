FROM registry.redhat.io/ubi8/dotnet-31

USER 0

COPY app /tmp/src
RUN chown -R 1001:0 /tmp/src

USER 1001
RUN /usr/libexec/s2i/assemble
CMD /usr/libexec/s2i/run
