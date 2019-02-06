FROM microsoft/dotnet:2.2-sdk AS build-env
WORKDIR /app
COPY . .
RUN dotnet publish -c Release -o /app/out

FROM microsoft/dotnet:2.2-runtime AS runtime-env
WORKDIR /app
COPY --from=build-env /app/out /app/out
RUN ls -lah /app/out

RUN ["dotnet", "/app/out/App.HelloWorld.dll"]