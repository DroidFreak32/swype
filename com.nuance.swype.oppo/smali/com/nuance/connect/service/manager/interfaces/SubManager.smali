.class public interface abstract Lcom/nuance/connect/service/manager/interfaces/SubManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
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

.method public abstract setEnabled(Z)V
.end method

.method public abstract setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;Z)V
.end method

.method public abstract start()V
.end method

.method public abstract unsubscribe(Ljava/lang/String;)Z
.end method
