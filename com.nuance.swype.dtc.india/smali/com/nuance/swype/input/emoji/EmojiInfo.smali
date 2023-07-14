.class public Lcom/nuance/swype/input/emoji/EmojiInfo;
.super Ljava/lang/Object;
.source "EmojiInfo.java"


# instance fields
.field public height:I

.field public width:I

.field public xPos:I

.field public yPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiInfo;->height:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiInfo;->xPos:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiInfo;->yPos:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiInfo;->width:I

    return v0
.end method
