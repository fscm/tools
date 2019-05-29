TARGET = bootstrap
TEMPLATE = bootstrap.template.tf
MARKER = __SCRIPT_DATA__:

all: update

update: remove_payload add_payload

remove_payload:
	@ sed '/^$(MARKER)$$/,$$d' $(TARGET) > $(TARGET).tmp
	@ sed '$${/^$$/d;}' $(TARGET).tmp > $(TARGET)
	@ rm $(TARGET).tmp

add_payload:
	@ echo "" >> $(TARGET)
	@ echo "$(MARKER)" >> $(TARGET)
	@ cat $(TEMPLATE) | uuencode - >> $(TARGET)
