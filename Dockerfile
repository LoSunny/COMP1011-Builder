FROM debian:11

# Install dependencies
RUN apt-get update \
  && apt-get install g++-mingw-w64-x86-64 wine -y \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /
COPY . .

# Run the test.exe to initialize the default configuration, to reduce the start time during execution
ENV WINEPATH=/usr/lib/gcc/x86_64-w64-mingw32/10-win32
RUN chmod +x docker-entrypoint.sh \
  && wine64 test.exe \
  && rm test.exe

ENTRYPOINT ["/docker-entrypoint.sh"]
