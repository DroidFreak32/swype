.class abstract Lcom/nuance/swype/input/BackspaceRevertHandler$State;
.super Ljava/lang/Object;
.source "BackspaceRevertHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/BackspaceRevertHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$State;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dlog(Ljava/lang/Object;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 49
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEnter(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)V
    .locals 1
    .param p1, "last"    # Lcom/nuance/swype/input/BackspaceRevertHandler$State;

    .prologue
    .line 38
    const-string/jumbo v0, "onEnter()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$State;->dlog(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public onExit(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)V
    .locals 0
    .param p1, "last"    # Lcom/nuance/swype/input/BackspaceRevertHandler$State;

    .prologue
    .line 43
    return-void
.end method
