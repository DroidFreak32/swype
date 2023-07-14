.class public Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ACLegalDocumentImpl"
.end annotation


# instance fields
.field private final accepted:Z

.field private final allRevisions:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/internal/common/Document;",
            ">;"
        }
    .end annotation
.end field

.field private final changed:Z

.field private final locale:Ljava/util/Locale;

.field private final parentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLegalDocuments;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method private constructor <init>(ILjava/util/Map;ZLcom/nuance/swypeconnect/ac/ACLegalDocuments;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/internal/common/Document;",
            ">;Z",
            "Lcom/nuance/swypeconnect/ac/ACLegalDocuments;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;-><init>(ILjava/util/Map;ZLcom/nuance/swypeconnect/ac/ACLegalDocuments;ZLjava/util/Locale;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/Map;ZLcom/nuance/swypeconnect/ac/ACLegalDocuments;ZLcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;-><init>(ILjava/util/Map;ZLcom/nuance/swypeconnect/ac/ACLegalDocuments;Z)V

    return-void
.end method

.method private constructor <init>(ILjava/util/Map;ZLcom/nuance/swypeconnect/ac/ACLegalDocuments;ZLjava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/internal/common/Document;",
            ">;Z",
            "Lcom/nuance/swypeconnect/ac/ACLegalDocuments;",
            "Z",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->allRevisions:Ljava/util/TreeMap;

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->type:I

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->allRevisions:Ljava/util/TreeMap;

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    iput-boolean p3, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->changed:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->parentRef:Ljava/lang/ref/WeakReference;

    iput-boolean p5, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->accepted:Z

    iput-object p6, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->locale:Ljava/util/Locale;

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/Map;ZLcom/nuance/swypeconnect/ac/ACLegalDocuments;ZLjava/util/Locale;Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;-><init>(ILjava/util/Map;ZLcom/nuance/swypeconnect/ac/ACLegalDocuments;ZLjava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public getLastAcceptedVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->allRevisions:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document;->getAccepted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "-1"

    goto :goto_0
.end method

.method public getLatestVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->allRevisions:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranslation()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->parentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->getDocumentByType(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase;->getDocumentByType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6d

    const-string/jumbo v2, "This document is out of date.  Call getDocument() to get a new version."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->type:I

    return v0
.end method

.method public isAccepted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->accepted:Z

    return v0
.end method

.method public isChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->changed:Z

    return v0
.end method

.method public wasAccepted()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->isAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-1"

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsBase$ACLegalDocumentImpl;->getLastAcceptedVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
