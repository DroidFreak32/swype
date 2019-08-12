.class public interface abstract Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/DLMConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DlmEventCallback"
.end annotation


# virtual methods
.method public abstract backupDlm()Z
.end method

.method public abstract processDlmDelete(I)Z
.end method

.method public abstract processDlmDelete(II)Z
.end method

.method public abstract processEvent(Ljava/lang/String;)Z
.end method

.method public abstract scan([CIIZ)Z
.end method

.method public abstract scanBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract scanCategory(I[CIIZ)Z
.end method

.method public abstract scanEnd()V
.end method
