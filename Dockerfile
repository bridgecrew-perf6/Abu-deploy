FROM fusuf/whatsasena:latest

RUN git clone https://github.com/shefinkl14/Abu /root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --ignore-engines
RUN git clone https://github.com/Afx-Abu/media

CMD ["node", "bot.js"]