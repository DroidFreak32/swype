.class Lcom/nuance/swype/input/settings/AccountPrefs$1;
.super Ljava/lang/Object;
.source "AccountPrefs.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public created()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    .line 97
    return-void
.end method

.method public devicesUpdated([Lcom/nuance/swypeconnect/ac/ACDevice;)V
    .registers 6
    .param p1, "devices"    # [Lcom/nuance/swypeconnect/ac/ACDevice;

    .prologue
    .line 90
    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "devices updated: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    .line 92
    return-void
.end method

.method public linked()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 101
    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ACAccountCallback.onError("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 102
    const/16 v0, 0x200

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x400

    if-ne p1, v0, :cond_48

    .line 105
    :cond_3b
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$100(Lcom/nuance/swype/input/settings/AccountPrefs;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMyWordsPrefs()V

    .line 107
    :cond_48
    return-void
.end method

.method public status(ILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 110
    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ACAccountCallback.status("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public verifyFailed()V
    .registers 1

    .prologue
    .line 115
    return-void
.end method
