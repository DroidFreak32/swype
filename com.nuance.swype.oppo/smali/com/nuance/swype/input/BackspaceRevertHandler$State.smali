.class public abstract Lcom/nuance/swype/input/BackspaceRevertHandler$State;
.super Ljava/lang/Object;
.source "BackspaceRevertHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/BackspaceRevertHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;


# direct methods
.method protected constructor <init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$State;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected dlog(Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-static {}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/BackspaceRevertHandler$State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
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
    .line 39
    const-string v0, "onEnter()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$State;->dlog(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public onExit(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)V
    .locals 0
    .param p1, "last"    # Lcom/nuance/swype/input/BackspaceRevertHandler$State;

    .prologue
    .line 44
    return-void
.end method
