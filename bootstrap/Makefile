TARGET = bootstrap
TEMPLATE = bootstrap.template.tf
MARKER = EOT

all: update

update: remove_payload add_payload

remove_payload:
	@ sed '/<<$(MARKER)/,/^$(MARKER)/{/<<$(MARKER)/!{/^$(MARKER)/!d;};}' $(TARGET) > $(TARGET).tmp
	@ mv $(TARGET).tmp $(TARGET)

add_payload:
	@ cat $(TEMPLATE) | base64 -b 80 > $(TEMPLATE).b64
	@ sed '/<<$(MARKER)/r $(TEMPLATE).b64' $(TARGET) > $(TARGET).tmp
	@ rm $(TEMPLATE).b64
	@ mv $(TARGET).tmp $(TARGET)

