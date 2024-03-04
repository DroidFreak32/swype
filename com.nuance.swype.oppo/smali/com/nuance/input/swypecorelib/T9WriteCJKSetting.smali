.class public Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;
.super Lcom/nuance/input/swypecorelib/T9WriteSetting;
.source "T9WriteCJKSetting.java"


# static fields
.field public static final MAX_RESULT_CHARACTERS:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;->setRecognitionMode(I)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;->setWritingDirection(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public setRecognitionMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setRecognitionMode(I)V

    .line 25
    return-void
.end method

.method public setWritingDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 13
    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWritingDirection(I)V

    .line 17
    return-void
.end method
