FROM opensuse
#Update
RUN zypper up -y 
#Common packages
RUN zypper install -y vim \
	emacs \
	curl \
	git \
	tmux \
	zsh \
	docker \
	docker-compose \
	go \ 
	autoconf \
	automake \
	cmake \
	gcc \
	libtool \
	pkg-config \
	python \
	unzip

RUN chsh -s /usr/bin/zsh

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
