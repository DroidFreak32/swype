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
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public created()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    .line 78
    return-void
.end method

.method public devicesUpdated([Lcom/nuance/swypeconnect/ac/ACDevice;)V
    .locals 3
    .param p1, "devices"    # [Lcom/nuance/swypeconnect/ac/ACDevice;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "devices updated: "

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    .line 73
    return-void
.end method

.method public linked()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACAccountCallback.onError("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 83
    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x400

    if-ne p1, v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$100(Lcom/nuance/swype/input/settings/AccountPrefs;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMyWordsPrefs()V

    .line 88
    :cond_1
    return-void
.end method

.method public status(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$1;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACAccountCallback.status("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public verifyFailed()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
