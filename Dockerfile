FROM ubuntu
RUN apt update && apt install -y curl
COPY . .
CMD bash start.sh