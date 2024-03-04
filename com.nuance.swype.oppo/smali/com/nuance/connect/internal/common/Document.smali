.class public Lcom/nuance/connect/internal/common/Document;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/common/Document$DocumentType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nuance/connect/internal/common/Document;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LOCALE:Ljava/lang/String; = "en"

.field public static final DOC_CLASS_LEGAL:I = 0x1

.field public static final ID_SEPARATOR:Ljava/lang/String; = "_"

.field private static final serialVersionUID:J = -0xd428dcbf30560b0L


# instance fields
.field private accepted:Z

.field private acceptedTimestamp:J

.field private final documentClass:I

.field private hashCode:I

.field private final id:Ljava/lang/String;

.field private final revision:I

.field translations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/internal/common/Document;->acceptedTimestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/common/Document;->accepted:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Document;->translations:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Document;->id:Ljava/lang/String;

    iput p1, p0, Lcom/nuance/connect/internal/common/Document;->type:I

    iput p2, p0, Lcom/nuance/connect/internal/common/Document;->documentClass:I

    iput p3, p0, Lcom/nuance/connect/internal/common/Document;->revision:I

    invoke-virtual {p0, p4, p5}, Lcom/nuance/connect/internal/common/Document;->addTranslation(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/Document;->updateHashCode()V

    return-void
.end method

.method public static getCompoundKey(III)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryKey(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/common/Document;->translations:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/Document;->updateHashCode()V

    return-void
.end method

.method public compareTo(Lcom/nuance/connect/internal/common/Document;)I
    .locals 2

    iget v0, p0, Lcom/nuance/connect/internal/common/Document;->type:I

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nuance/connect/internal/common/Document;->type:I

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/nuance/connect/internal/common/Document;->revision:I

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/common/Document;->compareTo(Lcom/nuance/connect/internal/common/Document;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/nuance/connect/internal/common/Document;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/nuance/connect/internal/common/Document;->hashCode:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getAccepted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/common/Document;->accepted:Z

    return v0
.end method

.method public getAcceptedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/internal/common/Document;->acceptedTimestamp:J

    return-wide v0
.end method

.method public getCompoundKey()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/nuance/connect/internal/common/Document;->type:I

    iget v1, p0, Lcom/nuance/connect/internal/common/Document;->documentClass:I

    iget v2, p0, Lcom/nuance/connect/internal/common/Document;->revision:I

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/internal/common/Document;->getCompoundKey(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentClass()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/common/Document;->documentClass:I

    return v0
.end method

.method public getDocumentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/common/Document;->hasLocale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/common/Document;->translations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/common/Document;->translations:Ljava/util/HashMap;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/Document;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocales()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/common/Document;->translations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryKey()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/nuance/connect/internal/common/Document;->type:I

    iget v1, p0, Lcom/nuance/connect/internal/common/Document;->documentClass:I

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRevision()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/common/Document;->revision:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/common/Document;->type:I

    return v0
.end method

.method public hasLocale(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/Document;->translations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nuance/connect/internal/common/Document;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nuance/connect/internal/common/Document;->documentClass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/nuance/connect/internal/common/Document;->revision:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/nuance/connect/internal/common/Document;->acceptedTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Document;->translations:Ljava/util/HashMap;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAcceptedTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nuance/connect/internal/common/Document;->acceptedTimestamp:J

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/Document;->updateHashCode()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/common/Document;->accepted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Document("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/common/Document;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\ntype["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/internal/common/Document;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\nclass["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/internal/common/Document;->documentClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\nrevision["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/internal/common/Document;->revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\nacceptedTimestamp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nuance/connect/internal/common/Document;->acceptedTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\naccepted["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/connect/internal/common/Document;->accepted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateHashCode()V
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/Document;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/internal/common/Document;->hashCode:I

    return-void
.end method
