.class public abstract Lcom/facebook/internal/PlatformServiceClient;
.super Ljava/lang/Object;
.source "PlatformServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    }
.end annotation


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

.field private final protocolVersion:I

.field private replyMessage:I

.field private requestMessage:I

.field private running:Z

.field private sender:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestMessage"    # I
    .param p3, "replyMessage"    # I
    .param p4, "protocolVersion"    # I
    .param p5, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_1b

    .end local v0    # "applicationContext":Landroid/content/Context;
    :goto_9
    iput-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/facebook/internal/PlatformServiceClient;->requestMessage:I

    .line 55
    iput p3, p0, Lcom/facebook/internal/PlatformServiceClient;->replyMessage:I

    .line 56
    iput-object p5, p0, Lcom/facebook/internal/PlatformServiceClient;->applicationId:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    .line 59
    new-instance v1, Lcom/facebook/internal/PlatformServiceClient$1;

    invoke-direct {v1, p0}, Lcom/facebook/internal/PlatformServiceClient$1;-><init>(Lcom/facebook/internal/PlatformServiceClient;)V

    iput-object v1, p0, Lcom/facebook/internal/PlatformServiceClient;->handler:Landroid/os/Handler;

    .line 65
    return-void

    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_1b
    move-object v0, p1

    .line 53
    goto :goto_9
.end method

.method private callback(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 154
    iget-boolean v1, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    if-nez v1, :cond_5

    .line 163
    :cond_4
    :goto_4
    return-void

    .line 157
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    .line 159
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    .line 160
    .local v0, "callback":Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    if-eqz v0, :cond_4

    .line 161
    invoke-interface {v0, p1}, Lcom/facebook/internal/PlatformServiceClient$CompletedListener;->completed(Landroid/os/Bundle;)V

    goto :goto_4
.end method

.method private sendMessage()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v3, p0, Lcom/facebook/internal/PlatformServiceClient;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/facebook/internal/PlatformServiceClient;->populateRequestBundle(Landroid/os/Bundle;)V

    .line 122
    iget v2, p0, Lcom/facebook/internal/PlatformServiceClient;->requestMessage:I

    invoke-static {v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 123
    .local v1, "request":Landroid/os/Message;
    iget v2, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 124
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 125
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/facebook/internal/PlatformServiceClient;->handler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 128
    :try_start_27
    iget-object v2, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 132
    :goto_2c
    return-void

    .line 130
    :catch_2d
    move-exception v2

    invoke-direct {p0, v4}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    goto :goto_2c
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    .line 99
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 137
    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p0, Lcom/facebook/internal/PlatformServiceClient;->replyMessage:I

    if-ne v1, v2, :cond_1c

    .line 138
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_1d

    .line 141
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    .line 146
    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1c} :catch_21

    .line 151
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1c
    :goto_1c
    return-void

    .line 143
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_1d
    invoke-direct {p0, v0}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    goto :goto_17

    :catch_21
    move-exception v1

    goto :goto_1c
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 102
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    .line 103
    invoke-direct {p0}, Lcom/facebook/internal/PlatformServiceClient;->sendMessage()V

    .line 104
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    .line 109
    :try_start_3
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8} :catch_c

    .line 113
    :goto_8
    invoke-direct {p0, v1}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    .line 114
    return-void

    :catch_c
    move-exception v0

    goto :goto_8
.end method

.method public abstract populateRequestBundle(Landroid/os/Bundle;)V
.end method

.method public setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/internal/PlatformServiceClient;->listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    .line 69
    return-void
.end method

.method public start()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    iget-boolean v3, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    if-eqz v3, :cond_7

    .line 93
    :cond_6
    :goto_6
    return v1

    .line 81
    :cond_7
    iget v3, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    invoke-static {v3}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForService(I)I

    move-result v3

    .line 83
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 87
    iget-object v3, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/internal/NativeProtocol;->createPlatformServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_6

    .line 91
    iput-boolean v2, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    .line 92
    iget-object v1, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move v1, v2

    .line 93
    goto :goto_6
.end method
