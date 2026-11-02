ARG FORTIGATE_VERSION

FROM --platform=$BUILDPLATFORM ghcr.io/socheatsok78/snmp-exporter-generator:0.30.1

ARG FORTIGATE_VERSION
COPY fortigate/${FORTIGATE_VERSION}/FORTINET-CORE-MIB.mib /opt/mibs/FORTINET-CORE-MIB.mib
COPY fortigate/${FORTIGATE_VERSION}/FORTINET-FORTIGATE-MIB.mib /opt/mibs/FORTINET-FORTIGATE-MIB.mib

WORKDIR /fortigate
COPY generator.yml /fortigate/generator.yml
RUN generator generate

FROM scratch
COPY --from=0 /fortigate/snmp.yml /snmp.yml
