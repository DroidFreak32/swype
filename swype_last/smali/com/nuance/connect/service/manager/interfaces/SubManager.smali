.class public interface abstract Lcom/nuance/connect/service/manager/interfaces/SubManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract categoriesManagedCount()I
.end method

.method public abstract createSubscribeTransaction(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;
.end method

.method public abstract getManagerPollInterval()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTypesSupported()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract languageUpdated([ILjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract localeUpdated(Ljava/util/Locale;)V
.end method

.method public abstract onDataUpdated()V
.end method

.method public abstract onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)V
.end method

.method public abstract parseJsonListResponse(Lorg/json/JSONObject;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract unsubscribe(Ljava/lang/String;)Z
.end method
