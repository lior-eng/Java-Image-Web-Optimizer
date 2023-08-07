#!/bin/bash

# Run the Java Image Optimizer utility with provided arguments
java -cp target/deps/pngtastic-1.0.jar -jar target/image-web-optimizer-0.0.2-SNAPSHOT.jar "$@"

