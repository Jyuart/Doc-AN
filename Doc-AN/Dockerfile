FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 7878
ENV ASPNETCORE_URLS=http://*:7878
ENV LOGLEVEL


FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["./Doc-AN.csproj", "./"]
RUN dotnet restore "./Doc-AN.csproj"
COPY . .
WORKDIR "/src"
RUN dotnet build "Doc-AN.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Doc-AN.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Doc-AN.dll"]