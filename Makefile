QEMUVERSION := v2.12.0-1
QEMUARCH := aarch64

download-static-bin:
	curl -sSL https://github.com/multiarch/qemu-user-static/releases/download/$(QEMUVERSION)/x86_64_qemu-$(QEMUARCH)-static.tar.gz | tar -xz -C ./
