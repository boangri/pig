FROM golang:1.16 AS build-env
RUN mkdir /app
WORKDIR /app
COPY . .
RUN go build
EXPOSE 8000
CMD /app/pig
