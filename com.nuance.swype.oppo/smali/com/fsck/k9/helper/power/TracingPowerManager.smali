.class public final Lcom/fsck/k9/helper/power/TracingPowerManager;
.super Ljava/lang/Object;
.source "TracingPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;
    }
.end annotation


# static fields
.field private static tracingPowerManager:Lcom/fsck/k9/helper/power/TracingPowerManager;

.field public static wakeLockId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field pm:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fsck/k9/helper/power/TracingPowerManager;->wakeLockId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager;->pm:Landroid/os/PowerManager;

    .line 19
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/fsck/k9/helper/power/TracingPowerManager;->pm:Landroid/os/PowerManager;

    .line 42
    return-void
.end method

.method static synthetic access$000$5e9c5b64()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getPowerManager(Landroid/content/Context;)Lcom/fsck/k9/helper/power/TracingPowerManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-class v1, Lcom/fsck/k9/helper/power/TracingPowerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/helper/power/TracingPowerManager;->tracingPowerManager:Lcom/fsck/k9/helper/power/TracingPowerManager;

    if-nez v0, :cond_1

    .line 25
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "k9"

    const-string v2, "Creating TracingPowerManager"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    new-instance v0, Lcom/fsck/k9/helper/power/TracingPowerManager;

    invoke-direct {v0, p0}, Lcom/fsck/k9/helper/power/TracingPowerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fsck/k9/helper/power/TracingPowerManager;->tracingPowerManager:Lcom/fsck/k9/helper/power/TracingPowerManager;

    .line 31
    :cond_1
    sget-object v0, Lcom/fsck/k9/helper/power/TracingPowerManager;->tracingPowerManager:Lcom/fsck/k9/helper/power/TracingPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final newWakeLock$6edeb054(Ljava/lang/String;)Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;-><init>(Lcom/fsck/k9/helper/power/TracingPowerManager;Ljava/lang/String;)V

    return-object v0
.end method
