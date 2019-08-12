.class Lcom/nuance/connect/sqlite/ReportingDataSource$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pointInterval:D

.field final synthetic val$pointValue:D

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iput-object p2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$pointValue:D

    iput-wide p6, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$pointInterval:D

    iput-object p8, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$extra:Ljava/lang/String;

    iput-wide p9, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->this$0:Lcom/nuance/connect/sqlite/ReportingDataSource;

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$pointValue:D

    iget-wide v6, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$pointInterval:D

    iget-object v8, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$extra:Ljava/lang/String;

    iget-wide v9, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;->val$timestamp:J

    invoke-static/range {v1 .. v10}, Lcom/nuance/connect/sqlite/ReportingDataSource;->access$100(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    return-void
.end method
