FROM ghcr.io/dasctf-offical/docker-template-for-web-node12:main

COPY src /app/

# 安装依赖请务必在构建阶段完成！
RUN cd /app && \
    npm install && \
    chmod +x /app/bin/www

# 如需自定义启动命令请覆盖 APP_CMD 环境变量
ENV APP_CMD="/app/bin/www"

# 如需自定义 FLAG 请将自定义脚本覆盖到 /flag.sh
# COPY files/flag.sh /flag.sh

# 如有上传文件等操作请务必将权限设置正确！
# RUN chown app:app /app/uploads/
# 如需静态 FLAG 请在此利用环境变量声明
# ENV DASFLAG=DASCTF{flag_test}
# 请声明对外暴露端口
EXPOSE 3000