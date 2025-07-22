FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src
COPY ["DevOpsChallengeApp.csproj", "./"]
RUN dotnet restore "DevOpsChallengeApp.csproj"
COPY . .
RUN dotnet build "DevOpsChallengeApp.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "DevOpsChallengeApp.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "DevOpsChallengeApp.dll"]
