.class public Lcom/facebook/internal/AppCall;
.super Ljava/lang/Object;
.source "AppCall.java"


# static fields
.field private static currentPendingCall:Lcom/facebook/internal/AppCall;


# instance fields
.field private callId:Ljava/util/UUID;

.field private requestCode:I

.field private requestIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "requestCode"    # I

    .prologue
    .line 72
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/AppCall;-><init>(ILjava/util/UUID;)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;)V
    .registers 3
    .param p1, "requestCode"    # I
    .param p2, "callId"    # Ljava/util/UUID;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/facebook/internal/AppCall;->callId:Ljava/util/UUID;

    .line 83
    iput p1, p0, Lcom/facebook/internal/AppCall;->requestCode:I

    .line 84
    return-void
.end method

.method public static declared-synchronized finishPendingCall(Ljava/util/UUID;I)Lcom/facebook/internal/AppCall;
    .registers 6
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "requestCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 42
    const-class v2, Lcom/facebook/internal/AppCall;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/facebook/internal/AppCall;->getCurrentPendingCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 43
    .local v0, "pendingCall":Lcom/facebook/internal/AppCall;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getRequestCode()I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_22

    move-result v3

    if-eq v3, p1, :cond_1d

    :cond_1a
    move-object v0, v1

    .line 51
    .end local v0    # "pendingCall":Lcom/facebook/internal/AppCall;
    :goto_1b
    monitor-exit v2

    return-object v0

    .line 49
    .restart local v0    # "pendingCall":Lcom/facebook/internal/AppCall;
    :cond_1d
    const/4 v1, 0x0

    :try_start_1e
    invoke-static {v1}, Lcom/facebook/internal/AppCall;->setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_1b

    .line 42
    .end local v0    # "pendingCall":Lcom/facebook/internal/AppCall;
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getCurrentPendingCall()Lcom/facebook/internal/AppCall;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/internal/AppCall;->currentPendingCall:Lcom/facebook/internal/AppCall;

    return-object v0
.end method

.method private static declared-synchronized setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z
    .registers 4
    .param p0, "appCall"    # Lcom/facebook/internal/AppCall;

    .prologue
    .line 56
    const-class v2, Lcom/facebook/internal/AppCall;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/facebook/internal/AppCall;->getCurrentPendingCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 57
    .local v0, "oldAppCall":Lcom/facebook/internal/AppCall;
    sput-object p0, Lcom/facebook/internal/AppCall;->currentPendingCall:Lcom/facebook/internal/AppCall;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 59
    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :goto_c
    monitor-exit v2

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    .line 56
    .end local v0    # "oldAppCall":Lcom/facebook/internal/AppCall;
    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getCallId()Ljava/util/UUID;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/internal/AppCall;->callId:Ljava/util/UUID;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/facebook/internal/AppCall;->requestCode:I

    return v0
.end method

.method public getRequestIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/internal/AppCall;->requestIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setPending()Z
    .registers 2

    .prologue
    .line 129
    invoke-static {p0}, Lcom/facebook/internal/AppCall;->setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z

    move-result v0

    return v0
.end method

.method public setRequestCode(I)V
    .registers 2
    .param p1, "requestCode"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/facebook/internal/AppCall;->requestCode:I

    .line 117
    return-void
.end method

.method public setRequestIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "requestIntent"    # Landroid/content/Intent;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/internal/AppCall;->requestIntent:Landroid/content/Intent;

    .line 121
    return-void
.end method
