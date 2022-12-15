FROM alpine:3.7


#instalando appdynamics
RUN mkdir -p /opt/appdynamics/

#ADD https://itau-appdynamics-installers.s3.sa-east-1.amazonaws.com/maven/openjdk11/saas/AppServerAgent.zip /opt/appdynamics/
ADD AppServerAgent.zip /opt/appdynamics/
RUN unzip /opt/appdynamics/AppServerAgent.zip -d /opt/appdynamics/ && rm -f /opt/appdynamics/AppServerAgent.zip

COPY custom-interceptors.xml /opt/appdynamics/
COPY KotlinAgentPlugin-1.0.jar /opt/appdynamics/
COPY move.sh /opt/appdynamics/
RUN ./opt/appdynamics/move.sh


#COPY custom-interceptors.xml /opt/appdynamics/ver*/conf/
#COPY KotlinAgentPlugin-1.0.jar /opt/appdynamics/ver*/sdk-plugins/


CMD ["tail", "-f", "/dev/null"]



