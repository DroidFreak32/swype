.class public interface abstract Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACLegalDocument"
.end annotation


# virtual methods
.method public abstract getLastAcceptedVersion()Ljava/lang/String;
.end method

.method public abstract getLatestVersion()Ljava/lang/String;
.end method

.method public abstract getTranslation()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract isAccepted()Z
.end method

.method public abstract isChanged()Z
.end method

.method public abstract wasAccepted()Z
.end method
