# Exemplo - como incluir o sdk no kotlin

1. Incluir a linha abaixo no build.gradle.kts

	implementation("com.appdynamics.agent:agent-api:20.6.0.30246")

	> Exemplo em /Users/ledeoliv/WORK/GIT/appd-Kotlin-samples/grpc/sdk/examples/server/build.gradle.kts

2. Exemplo marcar inicio e fim de transação

	...

	import com.appdynamics.agent.api.Transaction
	import com.appdynamics.agent.api.AppdynamicsAgent
	import com.appdynamics.agent.api.EntryTypes

	...

	//inicio BT
	val transaction = AppdynamicsAgent.startTransaction("TesteVO", null, EntryTypes.POJO, false);

	seu codigo aqui...

	//fim BT
	transaction.end();
	
	> Código com exemplo completo em server/src/main/kotlin/io/grpc/examples/helloworld/HelloWorldServer.kt

