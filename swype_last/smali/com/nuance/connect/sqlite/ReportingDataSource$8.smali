.class Lcom/nuance/connect/sqlite/ReportingDataSource$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

.field final synthetic val$type:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/ReportingDataSource;Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$8;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iput-object p2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$8;->val$type:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$8;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$8;->val$type:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    # invokes: Lcom/nuance/connect/sqlite/ReportingDataSource;->_enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V
    invoke-static {v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->access$700(Lcom/nuance/connect/sqlite/ReportingDataSource;Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    return-void
.end method
