FROM onceltuca/trilearn:1.23

RUN mkdir git
WORKDIR /git
RUN git clone https://github.com/melmasri/parallelDG.git
WORKDIR /git/parallelDG
RUN git fetch --all --tag # This is not triggered if the version is changed. It should be.
RUN git checkout v0.4 -b latest
RUN pip install -r requirements.txt
ENV PYTHONPATH /git:/git/parallelDG:/git/parallelDG/bin
ENV PATH /git/parallelDG/bin:$PATH
RUN chmod 755 bin/*
RUN apt install time


