.class Lcom/nuance/swype/input/SystemState$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SystemState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/SystemState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallStateListener"
.end annotation


# instance fields
.field private final sysStateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/SystemState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/SystemState;)V
    .locals 1
    .param p1, "parent"    # Lcom/nuance/swype/input/SystemState;

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/SystemState$CallStateListener;->sysStateRef:Ljava/lang/ref/WeakReference;

    .line 91
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/nuance/swype/input/SystemState$CallStateListener;->sysStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/SystemState;

    .line 96
    .local v0, "sysState":Lcom/nuance/swype/input/SystemState;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/SystemState;->onCallStateChanged(ILjava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method
