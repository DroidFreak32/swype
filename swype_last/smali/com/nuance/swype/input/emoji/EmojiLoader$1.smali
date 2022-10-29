.class final Lcom/nuance/swype/input/emoji/EmojiLoader$1;
.super Ljava/lang/Object;
.source "EmojiLoader.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/EmojiFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canShow(Ljava/lang/String;)Z
    .registers 3
    .param p1, "emojiString"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/EmojiLoader;->canShowEmoji(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
