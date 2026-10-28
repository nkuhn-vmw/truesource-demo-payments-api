# truesource-demo-payments-api

Demo payments API for [TrueSource Viewer](https://github.com/nkuhn-vmw/truesource-viewer-hub-edition).

**Intentionally vulnerable demo. Do not deploy it, do not install from it.** It contains only
manifests and lock files, written by hand: the lock files have no integrity hashes, and the
versions named below are pinned on purpose so that the viewer has something to find.

A Spring Boot 2.7 service.

| File | Pins | What the viewer should report |
|---|---|---|
| `pom.xml` | Spring Boot parent 2.7.18 | Spring Boot 2.7 is past its open-source end of life |
| `pom.xml` | `spring-cloud-function-context` 3.2.2 | CVE-2022-22963, in CISA's Known Exploited Vulnerabilities catalog |
| `pom.xml` | `jackson-databind` 2.13.2, `postgresql` 42.3.1, `snakeyaml` 1.30 | Known vulnerabilities, newer TrueSource builds |
| `Dockerfile` | `eclipse-temurin:11.0.14_9-jre` | An old Java 11 image |
| `compose.yaml` | `bitnami/postgresql:11.22.0`, `bitnami/redis:6.2.6` | PostgreSQL 11 is past its end of life |
