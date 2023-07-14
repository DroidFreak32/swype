.class Lcom/nuance/swype/input/KeyboardViewEx$1;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/KeyboardViewEx;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 982
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx$1;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 985
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$1;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleCallbackMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
