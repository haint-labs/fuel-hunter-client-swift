# NOTE: Trying to guess proto files default location
PROTO ?= ./../fuel-hunter-proto/proto

PROTOC_LINK = https://github.com/protocolbuffers/protobuf/releases/download/v3.11.4/protoc-3.11.4-osx-x86_64.zip
PROTOC_BUILD = ./.protoc
PROTOC_BIN = $(PROTOC_BUILD)/bin/protoc

SWIFT_GRPC_BIN = $(PROTOC_BUILD)/bin/protoc-gen-swift $(PROTOC_BUILD)/bin/protoc-gen-grpc-swift 
SWIFT_GRPC_OUT = ./Sources/FHClient/Generated

all: clean env grpc

# Install all required dependencies for protobuf and gRPC
.PHONY: env
env:
	brew install wget unzip pkg-config openssl
	swift package update


# Clean up
.PHONY: clean
clean:
	swift package clean
	rm -rf $(PROTOC_BUILD)/


# Build proto compiler and swift-grpc plugin
.PHONY: grpc
grpc: protoc grpc-swift


# Build proto compiler
.PHONY: protoc
protoc: $(PROTOC_BIN)

$(PROTOC_BIN):
	$(eval ARTIFACT := $(PROTOC_BUILD)/protoc-bin.zip)

	mkdir -p $(PROTOC_BUILD)
	wget -O $(ARTIFACT) $(PROTOC_LINK)
	unzip -o $(ARTIFACT) -d $(PROTOC_BUILD)
	rm $(ARTIFACT)


# Build swift gRPC plugin
.PHONY: grpc-swift
grpc-swift: $(SWIFT_GRPC_BIN)

$(SWIFT_GRPC_BIN):
	$(eval REPO := ./.build/checkouts/grpc-swift)

	mkdir -p $(PROTOC_BUILD)/bin

	make plugins -C $(REPO)

	find $(REPO)/.build \
		-type f \
		-name "protoc-gen-*" \
		-not -path "*.dSYM*" \
		-exec mv {} ./.protoc/bin \;


# Generate swift client
.PHONY: swift-client
swift-client:
	$(eval PROTO_FILES := $(shell find $(PROTO) -name "*.proto"))

	PATH=$(PROTOC_BUILD)/bin \
		protoc $(PROTO_FILES) \
			--proto_path=$(PROTO) \
			--swift_out=Visibility=Public,FileNaming=DropPath:$(SWIFT_GRPC_OUT) \
			--grpc-swift_out=Server=false,Client=true,Visibility=Public,FileNaming=DropPath:$(SWIFT_GRPC_OUT)
