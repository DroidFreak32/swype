.class Lcom/localytics/android/AnalyticsHandler$17;
.super Ljava/lang/Object;
.source "AnalyticsHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/AnalyticsHandler;->getPushRegistrationID()Ljava/lang/String;
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


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;)V
    .registers 2

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$17;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1066
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler$17;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1070
    const/4 v6, 0x0

    .line 1073
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$17;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v0, v0, Lcom/localytics/android/AnalyticsHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "registration_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1075
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1077
    const-string/jumbo v0, "registration_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_37

    move-result-object v0

    .line 1082
    if-eqz v6, :cond_2f

    .line 1084
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1088
    :cond_2f
    :goto_2f
    return-object v0

    .line 1082
    :cond_30
    if-eqz v6, :cond_35

    .line 1084
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_35
    move-object v0, v7

    .line 1088
    goto :goto_2f

    .line 1082
    :catchall_37
    move-exception v0

    if-eqz v6, :cond_3d

    .line 1084
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3d
    throw v0
.end method
