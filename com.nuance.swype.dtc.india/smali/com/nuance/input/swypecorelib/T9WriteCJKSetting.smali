.class public Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;
.super Lcom/nuance/input/swypecorelib/T9WriteSetting;
.source "T9WriteCJKSetting.java"


# static fields
.field public static final MAX_RESULT_CHARACTERS:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;-><init>()V

    .line 7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;->setRecognitionMode(I)V

    .line 8
    return-void
.end method


# virtual methods
.method public setRecognitionMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setRecognitionMode(I)V

    .line 20
    return-void
.end method

.method public setWritingDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWritingDirection(I)V

    .line 14
    return-void
.end method
