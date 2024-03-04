.class public Lcom/nuance/nmdp/speechkit/TextContext;
.super Ljava/lang/Object;
.source "TextContext.java"


# instance fields
.field private enabledCustomWordRecognition:Z

.field public mCustomIntegerLog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCustomStringLog:Ljava/util/HashMap;
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

.field private final mEndCursor:I

.field private final mStartCursor:I

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/TextContext;->enabledCustomWordRecognition:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mCustomStringLog:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mCustomIntegerLog:Ljava/util/HashMap;

    .line 13
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mText:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mStartCursor:I

    .line 15
    iput p3, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mEndCursor:I

    .line 16
    return-void
.end method


# virtual methods
.method public addCustomLog(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mCustomIntegerLog:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public addCustomLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mCustomStringLog:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableCustomWordRecogniztion(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/TextContext;->enabledCustomWordRecognition:Z

    .line 58
    return-void
.end method

.method public getEndCursor()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mEndCursor:I

    return v0
.end method

.method public getStartCursor()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mStartCursor:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextUTF8()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/TextContext;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "TextContext"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public needCustomWordRecogniztion()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/TextContext;->enabledCustomWordRecognition:Z

    return v0
.end method
