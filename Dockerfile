# Start with the official PostgreSQL image based on Alpine Linux
FROM postgres:16-alpine

# Run package updates and install necessary packages
RUN apk --no-cache add \
    python3 \
    py3-pip \
    cmake \
    make \
    gcc \
    g++ \
    clang15 \
    llvm15 \
    postgresql-dev \
    && pip install pgxnclient --break-system-packages \
    # Install the 'temporal_tables' extension using PGXN
    && pgxn install temporal_tables \
    # Remove unnecessary packages
    && apk del \
    py3-pip \
    cmake \
    make \
    gcc \
    g++ \
    clang15 \
    llvm15 \
    postgresql-dev \
    && rm -rf /var/cache/apk/*