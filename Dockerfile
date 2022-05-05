FROM cypress/base:16.14.2-slim

RUN groupadd --gid 999 ui-tests && \
    useradd --create-home --system --uid 999 --gid ui-tests ui-tests

USER ui-tests
WORKDIR /home/ui-tests
RUN npx cypress install

COPY ./ /home/ui-tests
COPY --chown=ui-tests . /home/ui-tests