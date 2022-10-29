.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(IILjava/util/Vector;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;->a:I

    iput p2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;->b:I

    iput-object p3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;->c:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getAlternativeAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Alternative;
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/dictationresult/Alternative;

    return-object v0
.end method

.method public getBeginIndexSelection()I
    .registers 2

    iget v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;->a:I

    return v0
.end method

.method public getEndIndexSelection()I
    .registers 2

    iget v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;->b:I

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativesImpl;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
