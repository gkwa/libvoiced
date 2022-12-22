FROM python

RUN git config --global user.email "you@example.com" && \
    git config --global user.name "Your Name"
RUN apt-get update && apt-get -qy install direnv && if ! grep --quiet direnv ~/.bashrc; then echo 'eval "$(direnv hook bash)"' >>~/.bashrc; fi
RUN pip install libvoiced && libvoiced --version
RUN libvoiced -vv --name mytest && ls -la mytest
