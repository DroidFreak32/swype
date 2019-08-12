.class public interface abstract Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_DATA_OPT_IN:I = 0x4

.field public static final TYPE_TERMS_OF_SERVICE:I = 0x1


# virtual methods
.method public abstract getDocumentByType(I)Ljava/lang/String;
.end method

.method public abstract getTOS()Ljava/lang/String;
.end method

.method public abstract getTOSVersion()Ljava/lang/String;
.end method

.method public abstract getVersionByType(I)Ljava/lang/String;
.end method

.method public abstract userAcceptDocumentByType(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract userAcceptedTOS()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract userHasAcceptedDocumentByType(I)Z
.end method

.method public abstract userHasAcceptedTOS()Z
.end method
