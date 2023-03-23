# To be used as the base image during the final stage of a rust app
FROM rust-build as build

FROM gcr.io/distroless/cc-debian11 as release

# Extract libpq for PostgreSQL Diesel connections
COPY --from=build /usr/lib/*-linux-gnu/libpq.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libgssapi_krb5.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libldap_r-2.4.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libkrb5.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libk5crypto.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libkrb5support.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/liblber-2.4.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libsasl2.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libgnutls.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libp11-kit.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libidn2.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libunistring.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libtasn1.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libnettle.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libhogweed.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libgmp.so* /usr/lib/
COPY --from=build /usr/lib/*-linux-gnu/libffi.so* /usr/lib/
COPY --from=build /lib/*-linux-gnu/libcom_err.so* /lib/
COPY --from=build /lib/*-linux-gnu/libkeyutils.so* /lib/