FROM alpine:latest
ENV POOL=stratum+tcp://1pool.sugarchain.org:3333
WORKDIR /root
RUN apk add --no-cache wget unzip
RUN wget https://github.com/decryp2kanon/sugarmaker/releases/download/v2.5.0-sugar4/sugarmaker-v2.5.0-sugar4-linux64.zip && unzip sugarmaker-v2.5.0-sugar4-linux64.zip && rm -rf sugarmaker-v2.5.0-sugar4-linux64.zip
RUN apk del wget unzip
ENTRYPOINT /root/sugarmaker-v2.5.0-sugar4-linux64/sugarmaker -a YespowerSugar -o $POOL -u $WALLET -t$THREADS
