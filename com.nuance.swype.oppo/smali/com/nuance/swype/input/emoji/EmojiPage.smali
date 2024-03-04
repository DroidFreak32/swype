.class public Lcom/nuance/swype/input/emoji/EmojiPage;
.super Ljava/lang/Object;
.source "EmojiPage.java"


# instance fields
.field private keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPage;->keyList:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public addKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPage;->keyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPage;->keyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPage;->keyList:Ljava/util/List;

    return-object v0
.end method
