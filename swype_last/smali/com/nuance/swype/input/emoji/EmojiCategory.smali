.class public abstract Lcom/nuance/swype/input/emoji/EmojiCategory;
.super Lcom/nuance/swype/input/emoji/AbstractCategory;
.source "EmojiCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nuance/swype/input/emoji/AbstractCategory;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iconResId"    # I

    .prologue
    .line 11
    .local p0, "this":Lcom/nuance/swype/input/emoji/EmojiCategory;, "Lcom/nuance/swype/input/emoji/EmojiCategory<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/emoji/AbstractCategory;-><init>(Ljava/lang/String;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/nuance/swype/input/emoji/EmojiCategory;, "Lcom/nuance/swype/input/emoji/EmojiCategory<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    if-ne p0, p1, :cond_5

    .line 29
    :cond_4
    :goto_4
    return v1

    .line 23
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 24
    goto :goto_4

    .line 25
    :cond_9
    instance-of v3, p1, Lcom/nuance/swype/input/emoji/EmojiCategory;

    if-nez v3, :cond_f

    move v1, v2

    .line 26
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 27
    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiCategory;

    .line 29
    .local v0, "other":Lcom/nuance/swype/input/emoji/EmojiCategory;
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiCategory;->name:Ljava/lang/String;

    if-nez v3, :cond_1c

    iget-object v3, v0, Lcom/nuance/swype/input/emoji/EmojiCategory;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_1c
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategory;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/nuance/swype/input/emoji/EmojiCategory;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public abstract getEmojiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract isRecentCategory()Z
.end method
