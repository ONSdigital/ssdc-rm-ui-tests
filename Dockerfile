FROM cypress/base:16.14.2-slim

RUN groupadd --gid 999 ui-tests && \
    useradd --create-home --system --uid 999 --gid ui-tests ui-tests

# Is this needed now?
WORKDIR /home/ui-tests

# Is this needed now?
COPY ./ /home/ui-tests


COPY --chown=ui-tests . /home/ui-tests

USER ui-tests
RUN npx cypress install


# Run
# CYPRESS_BASE_URL=http://rops:7777 npx cypress run