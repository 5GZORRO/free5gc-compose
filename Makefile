DOCKER_IMAGE_OWNER = 'free5gc'
DOCKER_IMAGE_NAME = 'builder-base'
DOCKER_IMAGE_TAG = 'latest'

.PHONY: base
all: base smf amf upf udr udm nrf nssf n3iwf webconsole pcf ausf
base:
	docker build -t ${DOCKER_IMAGE_OWNER}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ./base
	docker image ls ${DOCKER_IMAGE_OWNER}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}
smf:
	docker build -t ${DOCKER_IMAGE_OWNER}/smf-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.smf ./base
upf:
	docker build -t ${DOCKER_IMAGE_OWNER}/upf-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.upf ./base
amf:
	docker build -t ${DOCKER_IMAGE_OWNER}/amf-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.amf ./base
pcf:
	docker build -t ${DOCKER_IMAGE_OWNER}/pcf-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.pcf ./base
udm:
	docker build -t ${DOCKER_IMAGE_OWNER}/udm-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.udm ./base
udr:
	docker build -t ${DOCKER_IMAGE_OWNER}/udr-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.udr ./base
nssf:
	docker build -t ${DOCKER_IMAGE_OWNER}/nssf-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.nssf ./base
n3iwf:
	docker build -t ${DOCKER_IMAGE_OWNER}/n3iwf-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.n3iwf ./base
webconsole:
	docker build -t ${DOCKER_IMAGE_OWNER}/webconsole-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.webconsole ./base
ausf:
	docker build -t ${DOCKER_IMAGE_OWNER}/ausf-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.ausf ./base
nrf:
	docker build -t ${DOCKER_IMAGE_OWNER}/nrf-base:${DOCKER_IMAGE_TAG} -f ./base/Dockerfile.nrf ./base
