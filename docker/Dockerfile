FROM ubuntu:latest


ENV NAME DOCKER_TRAINING

RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y unzip wget git curl python-pip jq dos2unix figlet
RUN pip install --upgrade pip
RUN pip install awscli

ADD .gitconfig /root/
ADD .bashrc /root/

RUN \
  echo "IdentityFile /root/docker/repo-key.pem" >> /etc/ssh/ssh_config && \
  echo "IdentityFile /root/docker/${AWS_PEM_KEY}" >> /etc/ssh/ssh_config && \
  echo -e "StrictHostKeyChecking no" >> /etc/ssh/ssh_config && \
  echo "source /usr/share/git-core/contrib/completion/git-prompt.sh" >> /root/.bashrc && \
  echo "force_color_prompt=yes" >> /root/.bashrc
