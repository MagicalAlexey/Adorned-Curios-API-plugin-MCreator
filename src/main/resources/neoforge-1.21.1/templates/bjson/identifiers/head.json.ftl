{
  "replace": false,
  "values": [
    <#assign baubles = []>
    <#list curiosbaubles as bauble>
      <#if bauble.slotType == "HEAD">
        <#assign baubles += [bauble]>
      </#if>
    </#list>
    <#list baubles as bauble>
      "${modid}:${bauble.getModElement().getRegistryName()}"<#sep>,
    </#list>
  ]
}