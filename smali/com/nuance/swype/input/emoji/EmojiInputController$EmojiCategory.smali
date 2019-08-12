.class public Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
.super Ljava/lang/Object;
.source "EmojiInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiCategory"
.end annotation


# static fields
.field public static final NAME_RECENT:Ljava/lang/String; = "recent"


# instance fields
.field private arrayRefId:I

.field iconResId:I

.field private keyCode:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "arrayRefId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "iconResId"    # I

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->keyCode:I

    .line 288
    iput p2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->arrayRefId:I

    .line 289
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->name:Ljava/lang/String;

    .line 290
    iput p4, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->iconResId:I

    .line 291
    return-void
.end method


# virtual methods
.method public getArrayRefId()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->arrayRefId:I

    return v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->iconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->keyCode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->name:Ljava/lang/String;

    return-object v0
.end method
