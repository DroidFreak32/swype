.class public interface abstract Lcom/nuance/connect/service/manager/interfaces/CommandManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/comm/ResponseCallback;


# virtual methods
.method public abstract alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract getCommandFamily()Ljava/lang/String;
.end method

.method public abstract getRealTimeSubscriptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method
