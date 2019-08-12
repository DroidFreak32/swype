.class public interface abstract Lcom/fsck/k9/mail/PushReceiver;
.super Ljava/lang/Object;
.source "PushReceiver.java"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getPushState(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract messagesArrived(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract messagesFlagsChanged(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract messagesRemoved(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pushError(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract setPushActive(Ljava/lang/String;Z)V
.end method

.method public abstract sleep(Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;J)V
.end method

.method public abstract syncFolder(Lcom/fsck/k9/mail/Folder;)V
.end method
