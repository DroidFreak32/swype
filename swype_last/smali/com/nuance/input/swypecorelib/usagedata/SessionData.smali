.class public Lcom/nuance/input/swypecorelib/usagedata/SessionData;
.super Ljava/lang/Object;
.source "SessionData.java"


# instance fields
.field private final jsonSessionData:Lorg/json/JSONObject;

.field private final languageID:I

.field private final selectedCandidateCount:I

.field private final tracePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/util/List;II)V
    .registers 5
    .param p1, "jsonSessionData"    # Lorg/json/JSONObject;
    .param p3, "selectedCandidateCount"    # I
    .param p4, "languageID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "tracePoints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->jsonSessionData:Lorg/json/JSONObject;

    .line 22
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->tracePoints:Ljava/util/List;

    .line 23
    iput p3, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->selectedCandidateCount:I

    .line 24
    iput p4, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->languageID:I

    .line 25
    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->jsonSessionData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLanguageID()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->languageID:I

    return v0
.end method

.method public getSelectedCandidateCount()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->selectedCandidateCount:I

    return v0
.end method

.method public getTracePoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->tracePoints:Ljava/util/List;

    return-object v0
.end method
