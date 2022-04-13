#Use AST Base image
FROM mithileshpawar/ast-cli:latest

#Copy the entrypoint script and properties used for the action
# RUN adduser -S -D cxuser
# RUN useradd -m -r cxuser
# USER cxuser && chown -R cxuser /app
#USER root
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN /app/entrypoint.sh
RUN /app/cleanup.sh

