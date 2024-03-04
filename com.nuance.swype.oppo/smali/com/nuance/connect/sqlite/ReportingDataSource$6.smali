.class Lcom/nuance/connect/sqlite/ReportingDataSource$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/ReportingDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$6;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$6;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->restartCloseTimer()V

    return-void
.end method
