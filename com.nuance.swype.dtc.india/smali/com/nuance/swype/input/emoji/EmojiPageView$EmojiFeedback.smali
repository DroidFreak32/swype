.class final enum Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;
.super Ljava/lang/Enum;
.source "EmojiPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EmojiFeedback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

.field public static final enum FEEDBACK_POPUP:Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

.field public static final enum FEEDBACK_PRESS:Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    const-string/jumbo v1, "FEEDBACK_PRESS"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->FEEDBACK_PRESS:Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    .line 267
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    const-string/jumbo v1, "FEEDBACK_POPUP"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->FEEDBACK_POPUP:Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    .line 265
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->FEEDBACK_PRESS:Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->FEEDBACK_POPUP:Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->$VALUES:[Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 265
    const-class v0, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->$VALUES:[Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    return-object v0
.end method
