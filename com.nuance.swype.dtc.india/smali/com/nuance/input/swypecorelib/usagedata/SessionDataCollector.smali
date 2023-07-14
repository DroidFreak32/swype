.class public Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;
.super Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;
.source "SessionDataCollector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionDataCollector"


# instance fields
.field private autoCorrectionEnabled:Z

.field private final coreVersion:Ljava/lang/String;

.field private dataPointVersion:Ljava/lang/String;

.field private kdbID:I

.field private keyboardHeight:I

.field private keyboardWidth:I

.field private languageID:I

.field private ldbVersion:Ljava/lang/String;

.field private recapturedEditCount:I

.field private sessionDataSelectedCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private sessionEnd:J

.field private sessionStart:J

.field private tracePoints:Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;

.field private wasRecaptured:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "coreVersion"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionDataSelectedCandidates:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->tracePoints:Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;

    .line 29
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->dataPointVersion:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->coreVersion:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private addSelectedCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V
    .locals 2
    .param p1, "selectedCandidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "autoAccepted"    # Z

    .prologue
    .line 118
    new-instance v0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;

    invoke-direct {v0, p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;-><init>(Lcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 119
    .local v0, "candidate":Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;
    iput-boolean p3, v0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->autoAccepted:Z

    .line 120
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->defaultCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 121
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->exactCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 122
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->candidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 123
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionDataSelectedCandidates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method private formatCompactCandidate(Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;)Ljava/lang/String;
    .locals 14
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v6, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    .line 233
    .local v9, "selectedCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getWordSourceToType(Lcom/nuance/input/swypecorelib/Candidates$Source;)C

    move-result v10

    .line 234
    .local v10, "wordSourceInputType":C
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->isAutoAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->resultantWordType(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates$Source;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "resultantWordType":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02d"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v12

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getSelectionDefault(Lcom/nuance/input/swypecorelib/Candidates$Source;Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;)I

    move-result v7

    .line 244
    .local v7, "defaultSelection":I
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02d"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v12

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getCharCountTapped(Lcom/nuance/input/swypecorelib/Candidates$Source;Ljava/lang/String;)I

    move-result v2

    .line 246
    .local v2, "charCountTapped":I
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02d"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v12

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0, v9}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getCharCountResultant(Lcom/nuance/input/swypecorelib/WordCandidate;)I

    move-result v3

    .line 249
    .local v3, "charCountResultant":I
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02d"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v12

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 251
    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getEditDistance(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 254
    .local v8, "editDistance":I
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02d"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v12

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/16 v0, 0x2a

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    .end local v1    # "resultantWordType":Ljava/lang/String;
    .end local v2    # "charCountTapped":I
    .end local v3    # "charCountResultant":I
    .end local v7    # "defaultSelection":I
    .end local v8    # "editDistance":I
    :cond_0
    const/16 v0, 0x53

    goto/16 :goto_0
.end method

.method private formatDetailCandidate(Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    .line 184
    .local v2, "selectedCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 186
    .local v0, "exactCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    const-string/jumbo v3, "InputType"

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getWordSourceToType(Lcom/nuance/input/swypecorelib/Candidates$Source;)C

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v4, "AcceptType"

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->isAutoAccepted()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x41

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string/jumbo v3, "ResultantWordType"

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->resultantWordType(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates$Source;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string/jumbo v3, "SelectionListIndex"

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string/jumbo v3, "SelectionDefault"

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    const-string/jumbo v3, "CharCountTapped"

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    const-string/jumbo v3, "CharCountResultant"

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    const-string/jumbo v3, "EditDistance"

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->minEditDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    const-string/jumbo v3, "word"

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    return-object v1

    .line 187
    :cond_0
    const/16 v3, 0x53

    goto :goto_0
.end method

.method private getBaseData()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionStart:J

    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionEnd:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionEnd:J

    .line 139
    :cond_0
    const-string/jumbo v1, "CoreVersion"

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->coreVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string/jumbo v1, "LanguageID"

    iget v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->languageID:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    const-string/jumbo v1, "StartSession"

    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionStart:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 142
    const-string/jumbo v1, "EndSession"

    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionEnd:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v1, "Duration"

    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionEnd:J

    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v1, "LDBVersion"

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->ldbVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v1, "DLMMaturity"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v2, "Edited"

    iget v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->recapturedEditCount:I

    if-lez v1, :cond_1

    const-string/jumbo v1, "yes"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v2, "auto_correction"

    iget-boolean v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->autoCorrectionEnabled:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "on"

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v2, "SelListSetting"

    iget-boolean v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->autoCorrectionEnabled:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "high"

    :goto_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v1, "KeyboardHeight"

    iget v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->keyboardHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v1, "KeyboardWidth"

    iget v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->keyboardWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v1, "Recaptured"

    iget-boolean v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->wasRecaptured:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 152
    const-string/jumbo v1, "kdbID"

    iget v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->kdbID:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    :goto_3
    return-object v0

    .line 146
    :cond_1
    const-string/jumbo v1, "no"

    goto :goto_0

    .line 147
    :cond_2
    const-string/jumbo v1, "off"

    goto :goto_1

    .line 148
    :cond_3
    const-string/jumbo v1, "low"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 155
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method private getCompactFormatCandidate(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 209
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;

    .line 210
    .local v2, "selectedCandidate":Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;
    invoke-direct {p0, v2}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->formatCompactCandidate(Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 212
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "selectedCandidate":Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDetailWords()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 167
    .local v0, "jsonArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionDataSelectedCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;

    .line 168
    .local v1, "selectedCandidate":Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;
    invoke-direct {p0, v1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->formatDetailCandidate(Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 170
    .end local v1    # "selectedCandidate":Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;
    :cond_0
    return-object v0
.end method

.method private minEditDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 359
    .local v0, "chars1":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 360
    .local v1, "chars2":[C
    array-length v5, v0

    .line 361
    .local v5, "m":I
    array-length v6, v1

    .line 362
    .local v6, "n":I
    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v6, 0x1

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 364
    .local v2, "editDistance":[[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, v5, :cond_4

    .line 365
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-gt v4, v6, :cond_3

    .line 366
    if-nez v3, :cond_0

    .line 367
    aget-object v7, v2, v3

    aput v4, v7, v4

    .line 365
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 368
    :cond_0
    if-nez v4, :cond_1

    .line 369
    aget-object v7, v2, v3

    aput v3, v7, v4

    goto :goto_2

    .line 370
    :cond_1
    add-int/lit8 v7, v3, -0x1

    aget-char v7, v0, v7

    add-int/lit8 v8, v4, -0x1

    aget-char v8, v1, v8

    if-ne v7, v8, :cond_2

    .line 371
    aget-object v7, v2, v3

    add-int/lit8 v8, v3, -0x1

    aget-object v8, v2, v8

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    goto :goto_2

    .line 373
    :cond_2
    aget-object v7, v2, v3

    add-int/lit8 v8, v3, -0x1

    aget-object v8, v2, v8

    aget v8, v8, v4

    aget-object v9, v2, v3

    add-int/lit8 v10, v4, -0x1

    aget v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v9, v3, -0x1

    aget-object v9, v2, v9

    add-int/lit8 v10, v4, -0x1

    aget v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v4

    goto :goto_2

    .line 364
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    .end local v4    # "j":I
    :cond_4
    aget-object v7, v2, v5

    aget v7, v7, v6

    return v7
.end method


# virtual methods
.method public getCharCountResultant(Lcom/nuance/input/swypecorelib/WordCandidate;)I
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 325
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharCountTapped(Lcom/nuance/input/swypecorelib/Candidates$Source;Ljava/lang/String;)I
    .locals 1
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "candidate"    # Ljava/lang/String;

    .prologue
    .line 316
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v0, :cond_0

    .line 317
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataPointVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->dataPointVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailSessionData()Lcom/nuance/input/swypecorelib/usagedata/SessionData;
    .locals 5

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getBaseData()Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "words"

    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getDetailWords()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    new-instance v1, Lcom/nuance/input/swypecorelib/usagedata/SessionData;

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->tracePoints:Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->getPoints()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionDataSelectedCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->languageID:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nuance/input/swypecorelib/usagedata/SessionData;-><init>(Lorg/json/JSONObject;Ljava/util/List;II)V

    return-object v1

    .line 45
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getEditDistance(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "resultantWordType"    # Ljava/lang/String;
    .param p2, "charCountTapped"    # I
    .param p3, "charCountResultant"    # I
    .param p4, "exactCandidate"    # Ljava/lang/String;
    .param p5, "selectedCandidate"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string/jumbo v0, "Sw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Nw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    .line 335
    :cond_1
    const-string/jumbo v0, "Cp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    sub-int v0, p2, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0

    .line 340
    :cond_2
    invoke-direct {p0, p4, p5}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->minEditDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getSelectionDefault(Lcom/nuance/input/swypecorelib/Candidates$Source;Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;)I
    .locals 1
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;

    .prologue
    .line 261
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v0, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSessionData()Lcom/nuance/input/swypecorelib/usagedata/SessionData;
    .locals 5

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getBaseData()Lorg/json/JSONObject;

    move-result-object v0

    .line 55
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "Wordcount"

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionDataSelectedCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v1, "Words"

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionDataSelectedCandidates:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getCompactFormatCandidate(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v1, "version"

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->getDataPointVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    new-instance v1, Lcom/nuance/input/swypecorelib/usagedata/SessionData;

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->tracePoints:Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->getPoints()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionDataSelectedCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->languageID:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nuance/input/swypecorelib/usagedata/SessionData;-><init>(Lorg/json/JSONObject;Ljava/util/List;II)V

    return-object v1

    .line 59
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getWordSourceToType(Lcom/nuance/input/swypecorelib/Candidates$Source;)C
    .locals 3
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 271
    sget-object v1, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector$1;->$SwitchMap$com$nuance$input$swypecorelib$Candidates$Source:[I

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates$Source;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 286
    const/16 v0, 0x58

    .line 290
    .local v0, "wordSourceType":C
    :goto_0
    return v0

    .line 273
    .end local v0    # "wordSourceType":C
    :pswitch_0
    const/16 v0, 0x54

    .line 274
    .restart local v0    # "wordSourceType":C
    goto :goto_0

    .line 276
    .end local v0    # "wordSourceType":C
    :pswitch_1
    const/16 v0, 0x53

    .line 277
    .restart local v0    # "wordSourceType":C
    goto :goto_0

    .line 280
    .end local v0    # "wordSourceType":C
    :pswitch_2
    const/16 v0, 0x52

    .line 281
    .restart local v0    # "wordSourceType":C
    goto :goto_0

    .line 283
    .end local v0    # "wordSourceType":C
    :pswitch_3
    const/16 v0, 0x50

    .line 284
    .restart local v0    # "wordSourceType":C
    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAutoCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->autoCorrectionEnabled:Z

    .line 110
    return-void
.end method

.method public onCandidateSelected(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V
    .locals 0
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "autoAccepted"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->addSelectedCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    .line 105
    return-void
.end method

.method public onChangeKeyboard(III)V
    .locals 0
    .param p1, "kdbID"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 87
    iput p2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->keyboardWidth:I

    .line 88
    iput p3, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->keyboardHeight:I

    .line 89
    iput p1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->kdbID:I

    .line 90
    return-void
.end method

.method public onChangeLanguage(ILjava/lang/String;)V
    .locals 0
    .param p1, "languageID"    # I
    .param p2, "ldbVersion"    # Ljava/lang/String;

    .prologue
    .line 81
    iput p1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->languageID:I

    .line 82
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->ldbVersion:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public onFinishInputSession()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionEnd:J

    .line 77
    return-void
.end method

.method public onRecapture([C)V
    .locals 1
    .param p1, "word"    # [C

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->wasRecaptured:Z

    .line 95
    return-void
.end method

.method public onRecaptureEdit([C)V
    .locals 1
    .param p1, "word"    # [C

    .prologue
    .line 99
    iget v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->recapturedEditCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->recapturedEditCount:I

    .line 100
    return-void
.end method

.method public onStartInputSession()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionEnd:J

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionStart:J

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->sessionDataSelectedCandidates:Ljava/util/List;

    .line 69
    new-instance v0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->tracePoints:Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;

    .line 70
    iput-boolean v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->wasRecaptured:Z

    .line 71
    iput v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->recapturedEditCount:I

    .line 72
    return-void
.end method

.method public onTraced([F[F)V
    .locals 1
    .param p1, "xCoords"    # [F
    .param p2, "yCoords"    # [F

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;->tracePoints:Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->add([F[F)V

    .line 115
    return-void
.end method

.method public resultantWordType(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates$Source;)Ljava/lang/String;
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 295
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p2, v0, :cond_0

    .line 296
    const-string/jumbo v0, "Sw"

    .line 310
    :goto_0
    return-object v0

    .line 298
    :cond_0
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p2, v0, :cond_1

    .line 299
    const-string/jumbo v0, "Nw"

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isExact()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    const-string/jumbo v0, "Ex"

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextKillLength()I

    move-result v0

    if-lez v0, :cond_3

    .line 304
    const-string/jumbo v0, "Mw"

    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isSpellCorrected()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isExact()Z

    move-result v0

    if-nez v0, :cond_5

    .line 306
    :cond_4
    const-string/jumbo v0, "Cr"

    goto :goto_0

    .line 307
    :cond_5
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p2, v0, :cond_6

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isCompletion()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isExact()Z

    move-result v0

    if-nez v0, :cond_7

    .line 308
    :cond_6
    const-string/jumbo v0, "Cp"

    goto :goto_0

    .line 310
    :cond_7
    const-string/jumbo v0, "XX"

    goto :goto_0
.end method
