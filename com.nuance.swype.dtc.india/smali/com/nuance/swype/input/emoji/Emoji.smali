.class public Lcom/nuance/swype/input/emoji/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private canDisplay:Z

.field private defaultSkinToneColor:I

.field private emojiCode:Ljava/lang/String;

.field private emojiDisplayCode:Ljava/lang/String;

.field private emojiSkinToneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private emojiSkinType:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

.field private isFilterEmoji:Z

.field private isSkinTone:Z

.field private isSkinToneSupport:Z

.field private lastUsedSkinTone:Lcom/nuance/swype/input/emoji/Emoji;

.field private final mDefaultRep:Ljava/lang/String;

.field private final mRenderable:Z

.field private parentEmoji:Lcom/nuance/swype/input/emoji/Emoji;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "defaultRep"    # Ljava/lang/String;
    .param p2, "renderable"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiSkinType:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->isSkinTone:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiSkinToneList:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->mDefaultRep:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, Lcom/nuance/swype/input/emoji/Emoji;->mRenderable:Z

    .line 60
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/emoji/Emoji;->setCanDisplay(Z)V

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiSkinToneList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method


# virtual methods
.method public clearSkinList()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiSkinToneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiSkinToneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    :cond_0
    return-void
.end method

.method public defaultRep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->mDefaultRep:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSkinToneColor()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->defaultSkinToneColor:I

    return v0
.end method

.method public getEmojiCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEmojiDisplayCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiDisplayCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEmojiSkinToneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiSkinToneList:Ljava/util/List;

    return-object v0
.end method

.method public getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiSkinType:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    return-object v0
.end method

.method public getLastUsedSkinTone()Lcom/nuance/swype/input/emoji/Emoji;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->lastUsedSkinTone:Lcom/nuance/swype/input/emoji/Emoji;

    return-object v0
.end method

.method public getParentEmoji()Lcom/nuance/swype/input/emoji/Emoji;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->parentEmoji:Lcom/nuance/swype/input/emoji/Emoji;

    return-object v0
.end method

.method public isCanDisplay()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->canDisplay:Z

    return v0
.end method

.method public isFilterEmoji()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->isFilterEmoji:Z

    return v0
.end method

.method public isRenderable()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->mRenderable:Z

    return v0
.end method

.method public isSkinTone()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->isSkinTone:Z

    return v0
.end method

.method public isSkinToneSupport()Z
    .locals 2

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->isSkinToneSupport:Z

    goto :goto_0
.end method

.method public setCanDisplay(Z)V
    .locals 0
    .param p1, "canDisplay"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->canDisplay:Z

    .line 130
    return-void
.end method

.method public setDefaultSkinToneColor(I)V
    .locals 0
    .param p1, "defaultSkinToneColor"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->defaultSkinToneColor:I

    .line 122
    return-void
.end method

.method public setEmojiCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "emojiCode"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiCode:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setEmojiDisplayCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "emojiDisplayCode"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiDisplayCode:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setEmojiSkinToneList(Lcom/nuance/swype/input/emoji/Emoji;)V
    .locals 1
    .param p1, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiSkinToneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public setEmojiSkinType(Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;)V
    .locals 0
    .param p1, "emojiSkinType"    # Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->emojiSkinType:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    .line 147
    return-void
.end method

.method public setFilterEmoji(Z)V
    .locals 0
    .param p1, "filterEmoji"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->isFilterEmoji:Z

    .line 90
    return-void
.end method

.method public setLastUsedSkinTone(Lcom/nuance/swype/input/emoji/Emoji;)V
    .locals 0
    .param p1, "lastUsedSkinTone"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->lastUsedSkinTone:Lcom/nuance/swype/input/emoji/Emoji;

    .line 98
    return-void
.end method

.method public setParentEmoji(Lcom/nuance/swype/input/emoji/Emoji;)V
    .locals 0
    .param p1, "parentEmoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->parentEmoji:Lcom/nuance/swype/input/emoji/Emoji;

    .line 169
    return-void
.end method

.method public setSkinTone(Z)V
    .locals 0
    .param p1, "skinTone"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->isSkinTone:Z

    .line 161
    return-void
.end method

.method public setSkinToneSupport(Z)V
    .locals 0
    .param p1, "skinToneSupport"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/nuance/swype/input/emoji/Emoji;->isSkinToneSupport:Z

    .line 82
    return-void
.end method
