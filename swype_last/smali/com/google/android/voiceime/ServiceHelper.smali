.class public Lcom/google/android/voiceime/ServiceHelper;
.super Landroid/app/Service;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;,
        Lcom/google/android/voiceime/ServiceHelper$Callback;
    }
.end annotation


# static fields
.field static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string/jumbo v0, "ServiceHelper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/google/android/voiceime/ServiceHelper;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    invoke-direct {v0, p0}, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;-><init>(Lcom/google/android/voiceime/ServiceHelper;)V

    iput-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    sget-object v0, Lcom/google/android/voiceime/ServiceHelper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "#onCreate"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 54
    sget-object v0, Lcom/google/android/voiceime/ServiceHelper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "#onDestroy"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 55
    return-void
.end method
