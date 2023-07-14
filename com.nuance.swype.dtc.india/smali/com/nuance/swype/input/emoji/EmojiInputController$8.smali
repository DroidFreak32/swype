.class synthetic Lcom/nuance/swype/input/emoji/EmojiInputController$8;
.super Ljava/lang/Object;
.source "EmojiInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$swype$input$emoji$EmojiPageView$EmojiFeedback:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->values()[Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiInputController$8;->$SwitchMap$com$nuance$swype$input$emoji$EmojiPageView$EmojiFeedback:[I

    :try_start_0
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiInputController$8;->$SwitchMap$com$nuance$swype$input$emoji$EmojiPageView$EmojiFeedback:[I

    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->FEEDBACK_PRESS:Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiInputController$8;->$SwitchMap$com$nuance$swype$input$emoji$EmojiPageView$EmojiFeedback:[I

    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->FEEDBACK_POPUP:Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
