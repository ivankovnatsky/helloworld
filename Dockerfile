FROM python:3.10

WORKDIR /grpc

ENV PATH "$PATH:/grpc"

COPY greeter_server.py /grpc
COPY greeter_client.py /grpc
COPY helloworld_pb2.py /grpc
COPY helloworld_pb2_grpc.py /grpc

RUN python -m pip install --no-cache-dir grpcio grpcio-tools googleapis-common-protos
