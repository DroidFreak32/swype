.class Lcom/nuance/connect/sqlite/ReportingDataSource$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$timestamp:J

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iput-object p2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->val$value:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->val$extra:Ljava/lang/String;

    iput-wide p6, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->val$value:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->val$extra:Ljava/lang/String;

    iget-wide v6, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;->val$timestamp:J

    invoke-static/range {v1 .. v7}, Lcom/nuance/connect/sqlite/ReportingDataSource;->access$300(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
