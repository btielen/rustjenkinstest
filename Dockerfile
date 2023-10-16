FROM rust:1.73 as builder
WORKDIR /usr/src/rustjenkinstest
COPY . .
RUN cargo install --path .

FROM debian:bookworm
EXPOSE 3000
COPY --from=builder /usr/local/cargo/bin/rustjenkinstest /usr/local/bin/rustjenkinstest
CMD ["rustjenkinstest"]
