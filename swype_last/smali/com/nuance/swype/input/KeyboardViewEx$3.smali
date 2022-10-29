.class Lcom/nuance/swype/input/KeyboardViewEx$3;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/KeyboardViewEx;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/KeyboardViewEx;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 5111
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 5114
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->access$002(Lcom/nuance/swype/input/KeyboardViewEx;Z)Z

    .line 5115
    return-void
.end method
