FROM python:3-alpine
LABEL maintainer="forrestsun <sunquana@gmail.com>"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add -U --no-cache tzdata g++
ENV TZ Asia/Shanghai

WORKDIR /usr/src/app

COPY ["requirements.txt", "main.py", "./"]

RUN pip install --no-cache-dir -r requirements.txt

CMD ["bash"]

# ENTRYPOINT ["python", "main.py"]
