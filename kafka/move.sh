
VERSIONPATH=`ls /opt/appdynamics | grep ver`

mv /opt/appdynamics/custom-interceptors.xml /opt/appdynamics/$VERSIONPATH/conf/
mv /opt/appdynamics/KotlinAgentPlugin-1.0.jar /opt/appdynamics/$VERSIONPATH/sdk-plugins/

