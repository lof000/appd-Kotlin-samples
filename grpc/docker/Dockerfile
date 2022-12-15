FROM alpine:3.7


#TEMP
RUN mkdir -p /opt/appdynamics/
ADD AppServerAgent.zip /opt/appdynamics/
RUN unzip /opt/appdynamics/AppServerAgent.zip -d /opt/appdynamics/ && rm -f /opt/appdynamics/AppServerAgent.zip
#RUN chown -R docker /opt/appdynamics/


COPY KotlinAgentPlugin-1.0.jar /opt/appdynamics/
COPY move.sh /opt/appdynamics/
#RUN chown -R docker /opt/appdynamics/move.sh
RUN ./opt/appdynamics/move.sh

## Fim instalação do agente AppDynamics



CMD ["tail", "-f", "/dev/null"]



