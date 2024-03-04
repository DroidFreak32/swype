.class Lcom/nuance/connect/sqlite/ReportingDataSource$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

.field final synthetic val$type:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/ReportingDataSource;Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$5;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iput-object p2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$5;->val$type:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$5;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$5;->val$type:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-static {v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->access$400(Lcom/nuance/connect/sqlite/ReportingDataSource;Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    return-void
.end method
