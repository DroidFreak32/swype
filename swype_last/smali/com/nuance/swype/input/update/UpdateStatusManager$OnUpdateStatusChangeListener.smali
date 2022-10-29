.class public interface abstract Lcom/nuance/swype/input/update/UpdateStatusManager$OnUpdateStatusChangeListener;
.super Ljava/lang/Object;
.source "UpdateStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/update/UpdateStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUpdateStatusChangeListener"
.end annotation


# virtual methods
.method public abstract onProgressChanged(III)V
.end method

.method public abstract onUpdateStatusChanged(ILcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;)V
.end method
