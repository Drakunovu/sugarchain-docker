FROM ubuntu:bionic
WORKDIR /root
RUN apt-get update
RUN apt-get install wget unzip -y
RUN wget https://github.com/decryp2kanon/sugarmaker/releases/download/v2.5.0-sugar4/sugarmaker-v2.5.0-sugar4-linux64.zip && nzip sugarmaker-v2.5.0-sugar4-linux64.zip && rm -rf sugarmaker-v2.5.0-sugar4-linux64.zip
ENTRYPOINT /root/sugarmaker -a YespowerSugar -o stratum+tcp://1pool.sugarchain.org:3333 -u $WALLET -t$THREADS
