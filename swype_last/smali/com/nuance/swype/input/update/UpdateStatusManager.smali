.class public Lcom/nuance/swype/input/update/UpdateStatusManager;
.super Ljava/lang/Object;
.source "UpdateStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/update/UpdateStatusManager$OnUpdateStatusChangeListener;,
        Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/update/UpdateStatusManager$OnUpdateStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/IMEApplication;)V
    .registers 3
    .param p1, "imeApp"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/update/UpdateStatusManager;->listeners:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getLastUpdatedTime(I)J
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStatus(I)Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;
    .registers 3
    .param p1, "mLanguageId"    # I

    .prologue
    .line 39
    sget-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->UNKNOWN:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    return-object v0
.end method

.method public registerOnStatusChangeListener(Lcom/nuance/swype/input/update/UpdateStatusManager$OnUpdateStatusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/input/update/UpdateStatusManager$OnUpdateStatusChangeListener;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/update/UpdateStatusManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public unregisterOnStatusChangeListener(Lcom/nuance/swype/input/update/UpdateStatusManager$OnUpdateStatusChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/input/update/UpdateStatusManager$OnUpdateStatusChangeListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/update/UpdateStatusManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
