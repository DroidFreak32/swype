.class public Lcom/nuance/swype/usagedata/WordCandidateDataPoint;
.super Ljava/lang/Object;
.source "WordCandidateDataPoint.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field private final context:Landroid/content/Context;

.field private final country:Ljava/lang/String;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private lastSent:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->TAG:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "WordCandidateDataPoint"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Landroid/content/Context;Ljava/lang/String;Landroid/util/DisplayMetrics;)V
    .registers 7
    .param p1, "alphaInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 36
    iput-object p2, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->context:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->country:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->lastSent:J

    .line 40
    return-void
.end method

.method private getTraceDistance(Lcom/nuance/input/swypecorelib/usagedata/SessionData;)J
    .registers 20
    .param p1, "sessionData"    # Lcom/nuance/input/swypecorelib/usagedata/SessionData;

    .prologue
    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "distance":J
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->getTracePoints()Ljava/util/List;

    move-result-object v12

    .line 82
    .local v12, "tracePoints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_5d

    .line 83
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v10, v13

    .line 84
    .local v10, "startX":F
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v11, v13

    .line 86
    .local v11, "startY":F
    const/4 v6, 0x1

    .local v6, "h":I
    :goto_21
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_5d

    .line 87
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 88
    .local v9, "pt":Landroid/graphics/Point;
    iget v13, v9, Landroid/graphics/Point;->x:I

    int-to-float v7, v13

    .line 89
    .local v7, "hx":F
    iget v13, v9, Landroid/graphics/Point;->y:I

    int-to-float v8, v13

    .line 91
    .local v8, "hy":F
    sub-float v13, v7, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v14, v14, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v4, v13, v14

    .line 92
    .local v4, "dx":F
    sub-float v13, v8, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v14, v14, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v5, v13, v14

    .line 94
    .local v5, "dy":F
    long-to-double v14, v2

    mul-float v13, v4, v4

    mul-float v16, v5, v5

    add-float v13, v13, v16

    float-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    add-double v14, v14, v16

    double-to-long v2, v14

    .line 96
    move v10, v7

    .line 97
    move v11, v8

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 101
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v6    # "h":I
    .end local v7    # "hx":F
    .end local v8    # "hy":F
    .end local v9    # "pt":Landroid/graphics/Point;
    .end local v10    # "startX":F
    .end local v11    # "startY":F
    :cond_5d
    return-wide v2
.end method


# virtual methods
.method public final write(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/usagedata/DataPointWriter;)V
    .registers 13
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "writer"    # Lcom/nuance/swype/usagedata/DataPointWriter;

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->lastSent:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x7d0

    cmp-long v5, v6, v8

    if-lez v5, :cond_87

    .line 47
    iget-object v5, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getSessionData()Lcom/nuance/input/swypecorelib/usagedata/SessionData;

    move-result-object v4

    .line 48
    .local v4, "sessionData":Lcom/nuance/input/swypecorelib/usagedata/SessionData;
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->getSelectedCandidateCount()I

    move-result v5

    if-lez v5, :cond_85

    .line 50
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->getData()Lorg/json/JSONObject;

    move-result-object v3

    .line 53
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_1e
    const-string/jumbo v5, "app"

    iget-object v6, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v5, "ScreenResolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v5, "Country"

    iget-object v6, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->country:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v6, "language"

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/usagedata/SessionData;->getLanguageID()I

    move-result v5

    .line 1071
    iget-object v7, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/nuance/swype/input/InputMethods;->getLanguageById(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v7

    if-eqz v7, :cond_88

    .line 1072
    iget-object v7, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/nuance/swype/input/InputMethods;->getLanguageById(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 56
    :goto_75
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v5, "traceDistance"

    invoke-direct {p0, v4}, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->getTraceDistance(Lcom/nuance/input/swypecorelib/usagedata/SessionData;)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    invoke-interface {p2, v4}, Lcom/nuance/swype/usagedata/DataPointWriter;->write(Lcom/nuance/input/swypecorelib/usagedata/SessionData;)V
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_85} :catch_a1

    .line 66
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_85
    :goto_85
    iput-wide v0, p0, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->lastSent:J

    .line 68
    .end local v4    # "sessionData":Lcom/nuance/input/swypecorelib/usagedata/SessionData;
    :cond_87
    return-void

    .line 1074
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "sessionData":Lcom/nuance/input/swypecorelib/usagedata/SessionData;
    :cond_88
    :try_start_88
    sget-object v7, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getLanguageName - invalid language ID: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1075
    const-string/jumbo v5, ""
    :try_end_a0
    .catch Lorg/json/JSONException; {:try_start_88 .. :try_end_a0} :catch_a1

    goto :goto_75

    .line 61
    :catch_a1
    move-exception v2

    .line 62
    .local v2, "ex":Lorg/json/JSONException;
    sget-object v5, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85
.end method
