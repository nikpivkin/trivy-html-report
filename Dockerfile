ARG TRIVY_VERSION

FROM aquasec/trivy:$TRIVY_VERSION

RUN trivy plugin install github.com/afdesk/scan2html

ENTRYPOINT ["trivy", "scan2html"]