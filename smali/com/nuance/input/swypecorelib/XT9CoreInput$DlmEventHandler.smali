.class public interface abstract Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;
.super Ljava/lang/Object;
.source "XT9CoreInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/XT9CoreInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DlmEventHandler"
.end annotation


# virtual methods
.method public abstract onBeginDlmBackup(I)V
.end method

.method public abstract onDlmEvent([BZJI)V
.end method

.method public abstract onDlmInitializeStatus(Lcom/nuance/input/swypecorelib/XT9Status;I)V
.end method

.method public abstract onEndDlmBackup()V
.end method
