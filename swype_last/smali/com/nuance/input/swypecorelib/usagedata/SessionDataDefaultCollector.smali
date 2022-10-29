.class public Lcom/nuance/input/swypecorelib/usagedata/SessionDataDefaultCollector;
.super Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;
.source "SessionDataDefaultCollector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionData()Lcom/nuance/input/swypecorelib/usagedata/SessionData;
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    new-instance v0, Lcom/nuance/input/swypecorelib/usagedata/SessionData;

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/nuance/input/swypecorelib/usagedata/SessionData;-><init>(Lorg/json/JSONObject;Ljava/util/List;II)V

    return-object v0
.end method

.method public onAutoCorrectionEnabled(Z)V
    .registers 2
    .param p1, "endable"    # Z

    .prologue
    .line 52
    return-void
.end method

.method public onCandidateSelected(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V
    .registers 4
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "autoAccepted"    # Z

    .prologue
    .line 47
    return-void
.end method

.method public onChangeKeyboard(III)V
    .registers 4
    .param p1, "kdbID"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 32
    return-void
.end method

.method public onChangeLanguage(ILjava/lang/String;)V
    .registers 3
    .param p1, "languageID"    # I
    .param p2, "ldbVersion"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public onFinishInputSession()V
    .registers 1

    .prologue
    .line 22
    return-void
.end method

.method public onRecapture([C)V
    .registers 2
    .param p1, "word"    # [C

    .prologue
    .line 37
    return-void
.end method

.method public onRecaptureEdit([C)V
    .registers 2
    .param p1, "word"    # [C

    .prologue
    .line 42
    return-void
.end method

.method public onStartInputSession()V
    .registers 1

    .prologue
    .line 17
    return-void
.end method

.method public onTraced([F[F)V
    .registers 3
    .param p1, "xCoords"    # [F
    .param p2, "yCoords"    # [F

    .prologue
    .line 56
    return-void
.end method
