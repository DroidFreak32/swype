.class Lcom/localytics/android/AnalyticsHandler$18;
.super Ljava/lang/Object;
.source "AnalyticsHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/AnalyticsHandler;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/AnalyticsHandler;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$18;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput-object p2, p0, Lcom/localytics/android/AnalyticsHandler$18;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1773
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler$18;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1777
    const/4 v7, 0x0

    .line 1778
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1781
    .local v6, "currentValue":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$18;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v0, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "identifiers"

    invoke-static {}, Lcom/localytics/android/AnalyticsHandler;->access$1200()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/localytics/android/AnalyticsHandler;->access$1300()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/localytics/android/AnalyticsHandler$18;->val$key:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1783
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    const-string/jumbo v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1790
    :cond_0
    if-eqz v7, :cond_1

    .line 1792
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1797
    :cond_1
    return-object v6

    .line 1790
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 1792
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1793
    :cond_2
    throw v0
.end method
