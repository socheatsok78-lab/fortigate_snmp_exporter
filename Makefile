.EXPORT_ALL_VARIABLES:
FORTIGATE_VERSION := none

make: fortigate/$(FORTIGATE_VERSION)/snmp.yml
fortigate/$(FORTIGATE_VERSION)/snmp.yml:
	docker buildx bake
	cp out/snmp.yml fortigate/$(FORTIGATE_VERSION)/snmp.yml
fortigate/none/snmp.yml:
	@echo "Please specify a FortiGate version. Example: make FORTIGATE_VERSION=v7.x"
	@exit 1
