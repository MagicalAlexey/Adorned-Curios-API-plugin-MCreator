<#include "procedures.java.ftl">
@Mod.EventBusSubscriber public class ${name}Procedure {
	@SubscribeEvent public static void onCurioEquipserver(CurioChangeEvent event) {
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
                        "itemstack": "event.getTo()",
			"x": "event.getEntity().getX()",
			"y": "event.getEntity().getY()",
			"z": "event.getEntity().getZ()",
			"world": "event.getEntity().level",
			"entity": "event.getEntity()",
			"event": "event"
			}/>
		</#compress></#assign>
		execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	}