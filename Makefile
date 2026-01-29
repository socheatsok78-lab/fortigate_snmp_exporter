.EXPORT_ALL_VARIABLES:
FORTIGATE_VERSION := v7.2

make: fortigate/$(FORTIGATE_VERSION)/snmp.yml
fortigate/$(FORTIGATE_VERSION)/snmp.yml:
	docker buildx bake
	cp out/snmp.yml fortigate/$(FORTIGATE_VERSION)/snmp.yml
