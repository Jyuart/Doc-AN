

FROM mcr.microsoft.com/dotnet/core/sdk:latest
WORKDIR "/src"
COPY . .
WORKDIR "/src/Doc-AN"

RUN dotnet build 