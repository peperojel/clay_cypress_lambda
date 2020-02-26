from lambci/lambda:build-nodejs12.x

WORKDIR /app

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY cypress.json .
COPY cypress ./cypress
COPY install_deps.sh .
# COPY pack-lib.sh .
# COPY xkb-compile.sh .
# COPY patch.sh .

RUN chmod +x ./install_deps.sh && ./install_deps.sh
# RUN chmod +x ./pack-lib.sh && ./pack-lib.sh
# RUN chmod +x ./xkb-compile.sh && ./xkb-compile.sh
# RUN chmod +x ./patch.sh && ./patch.sh

CMD npx cypress run