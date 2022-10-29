.class public interface abstract Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;
    }
.end annotation


# static fields
.field public static final TYPE_DATA_OPT_IN:I = 0x4

.field public static final TYPE_TERMS_OF_SERVICE:I = 0x1


# virtual methods
.method public abstract acceptDocument(Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract getDocument(ILjava/util/Locale;)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract getDocumentByType(I)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVersionByType(I)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resetChangedFlag(Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;)V
.end method

.method public abstract userAcceptDocumentByType(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract userHasAcceptedDocumentByType(I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
