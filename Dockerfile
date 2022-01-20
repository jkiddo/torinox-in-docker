FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
RUN dotnet tool install -g firely.terminal

FROM mcr.microsoft.com/dotnet/core/runtime:3.1
COPY --from=build-env /root/.dotnet/tools /root/.dotnet/tools
ENV PATH="${PATH}:/root/.dotnet/tools"

RUN fhir install hl7.fhir.r3.core
RUN fhir install hl7.fhir.r4.core