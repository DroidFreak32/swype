.class Lcom/nuance/swype/input/emoji/finger/FingerState$1;
.super Ljava/lang/Object;
.source "FingerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$1;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$1;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->onTimeout()V

    .line 84
    return-void
.end method
