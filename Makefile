protoc:
		CLIENT_OUTDIR=client/src/helloworld
		SERVER_OUTPUT_DIR=server/helloworld

		mkdir -p client/src/helloworld server/helloworld

		# protocol/helloworld.proto
		#  --js_out => helloworld_pb.js
		#  --grpc-web_out => helloworld_pb.d.ts
		#  --grpc-web_out => HelloworldServiceClientPb.ts
		#  --go_out => helloworld.pb.go
		protoc --proto_path=api helloworld.proto \
				--js_out=import_style=commonjs:client/src/helloworld \
				--grpc-web_out=import_style=typescript,mode=grpcwebtext:client/src/helloworld \
				--go_out=plugins=grpc:server/helloworld

dockerbuild:
	docker-compose up -d server proxy client
