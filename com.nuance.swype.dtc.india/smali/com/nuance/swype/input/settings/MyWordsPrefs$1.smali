.class Lcom/nuance/swype/input/settings/MyWordsPrefs$1;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public created()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACAccountCallback.created()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$002(Lcom/nuance/swype/input/settings/MyWordsPrefs;Z)Z

    .line 122
    return-void
.end method

.method public devicesUpdated([Lcom/nuance/swypeconnect/ac/ACDevice;)V
    .locals 0
    .param p1, "devices"    # [Lcom/nuance/swypeconnect/ac/ACDevice;

    .prologue
    .line 115
    return-void
.end method

.method public linked()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACAccountCallback.linked()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->cancelAllActiveDialogs()V

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$002(Lcom/nuance/swype/input/settings/MyWordsPrefs;Z)Z

    .line 110
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ACAccountCallback.onError("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 127
    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x400

    if-ne p1, v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 132
    :cond_1
    return-void
.end method

.method public status(ILjava/lang/String;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ACAccountCallback.accountStatus("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 136
    const/16 v1, 0x300

    if-ne p1, v1, :cond_0

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "invalid_account_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 141
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public verifyFailed()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/MyWordsPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "verifyFailed()"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "invalid_account_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 149
    return-void
.end method
