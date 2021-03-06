Class DMLSS.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="DMLSS.NewProduction" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="FileService" Category="" ClassName="EnsLib.File.PassthroughService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/srv/hs/db/data/dmlss</Setting>
    <Setting Target="Adapter" Name="FileSpec">testFile???.txt</Setting>
    <Setting Target="Host" Name="TargetConfigNames">EmailOperation</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
  </Item>
  <Item Name="EmailOperation" Category="" ClassName="DMLSS.EmailPassthroughOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
    <Setting Target="Adapter" Name="From">dmlss@va.gov</Setting>
    <Setting Target="Adapter" Name="Recipient">Oliver.Wilms@va.gov</Setting>
    <Setting Target="Adapter" Name="SMTPPort">25</Setting>
    <Setting Target="Adapter" Name="SMTPServer">smtp.va.gov</Setting>
  </Item>
</Production>
}

}
