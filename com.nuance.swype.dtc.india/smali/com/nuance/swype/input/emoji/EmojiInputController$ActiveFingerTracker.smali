.class Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/finger/FingerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveFingerTracker"
.end annotation


# instance fields
.field private active:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 216
    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->active:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/emoji/EmojiInputController;Lcom/nuance/swype/input/emoji/EmojiInputController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;
    .param p2, "x1"    # Lcom/nuance/swype/input/emoji/EmojiInputController$1;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    return-void
.end method

.method private addActive(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->active:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->active:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$000(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->setAllowScroll(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method private removeActive(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->active:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->active:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$000(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->setAllowScroll(Z)V

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public onFingerCancel(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V
    .locals 1
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;

    .prologue
    .line 255
    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getPointerId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->removeActive(I)V

    .line 256
    return-void
.end method

.method public onFingerMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V
    .locals 0
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;

    .prologue
    .line 244
    return-void
.end method

.method public onFingerPress(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V
    .locals 2
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;

    .prologue
    .line 220
    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->SHORT:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    if-ne v0, v1, :cond_0

    .line 221
    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getPointerId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->addActive(I)V

    .line 223
    :cond_0
    return-void
.end method

.method public onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V
    .locals 1
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;
    .param p3, "isEscape"    # Z

    .prologue
    .line 248
    if-nez p3, :cond_0

    .line 249
    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getPointerId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;->removeActive(I)V

    .line 251
    :cond_0
    return-void
.end method
