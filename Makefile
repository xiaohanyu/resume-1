RESUME_FILE=resume.yml
TMP_DIR=tmp
PDF_OUT=resume.pdf

.PHONY: all build clean

all: build

$(TMP_DIR):
	mkdir -p $(TMP_DIR)

build: $(PDF_OUT)

$(PDF_OUT): $(RESUME_FILE) | $(TMP_DIR)
	# Copy resume file to tmp directory
	cp $(RESUME_FILE) $(TMP_DIR)/$(RESUME_FILE)

	# Run the build inside tmp using Docker
	docker run --pull=always --rm -v $(PWD)/$(TMP_DIR):/home/yamlresume yamlresume/yamlresume:latest build $(RESUME_FILE)

clean:
	rm -rf $(TMP_DIR) $(PDF_OUT)
