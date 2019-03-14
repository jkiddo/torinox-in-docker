FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-env
RUN dotnet tool install -g torinox

FROM mcr.microsoft.com/dotnet/core/runtime:2.2
COPY --from=build-env /root/.dotnet/tools /root/.dotnet/tools
ENV PATH="${PATH}:/root/.dotnet/tools"
RUN fhir install simplifier.core.stu3
