FROM tenableofficial/nessus:10.5.0
RUN groupadd -g 10000 -o nessus
RUN useradd -m -u 10000 -g 10000 -o nessus
RUN chown -R nessus:nessus /opt/nessus 
USER nessus
ENTRYPOINT [ "/opt/nessus/sbin/nessusd" ]
CMD [ "start", "--no-root" ]