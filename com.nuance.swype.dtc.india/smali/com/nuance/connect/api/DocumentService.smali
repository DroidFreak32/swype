.class public interface abstract Lcom/nuance/connect/api/DocumentService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)V
.end method

.method public abstract acceptDocumentIfCurrent(Lcom/nuance/connect/internal/common/Document$DocumentType;I)V
.end method

.method public abstract getAllRevisions(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/common/Document$DocumentType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/internal/common/Document;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getDocumentRevisionNumber(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/util/Locale;)Ljava/lang/String;
.end method
