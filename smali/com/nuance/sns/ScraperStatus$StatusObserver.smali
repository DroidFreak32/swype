.class public Lcom/nuance/sns/ScraperStatus$StatusObserver;
.super Ljava/lang/Object;
.source "ScraperStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/sns/ScraperStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusObserver"
.end annotation


# instance fields
.field private final subscribers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/sns/ScraperStatus$IStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/sns/ScraperStatus$StatusObserver;->subscribers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/sns/ScraperStatus$StatusObserver;Lcom/nuance/sns/ScraperStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/ScraperStatus$StatusObserver;
    .param p1, "x1"    # Lcom/nuance/sns/ScraperStatus;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/nuance/sns/ScraperStatus$StatusObserver;->notifyStatusChange(Lcom/nuance/sns/ScraperStatus;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/sns/ScraperStatus$StatusObserver;Lcom/nuance/sns/ScraperStatus$IStatusListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/ScraperStatus$StatusObserver;
    .param p1, "x1"    # Lcom/nuance/sns/ScraperStatus$IStatusListener;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/nuance/sns/ScraperStatus$StatusObserver;->addListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/sns/ScraperStatus$StatusObserver;Lcom/nuance/sns/ScraperStatus$IStatusListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/ScraperStatus$StatusObserver;
    .param p1, "x1"    # Lcom/nuance/sns/ScraperStatus$IStatusListener;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/nuance/sns/ScraperStatus$StatusObserver;->removeStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    return-void
.end method

.method private addListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/sns/ScraperStatus$IStatusListener;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/nuance/sns/ScraperStatus$StatusObserver;->removeStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 134
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$StatusObserver;->subscribers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method private notifyStatusChange(Lcom/nuance/sns/ScraperStatus;)V
    .locals 2
    .param p1, "scraperStatus"    # Lcom/nuance/sns/ScraperStatus;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/nuance/sns/ScraperStatus$StatusObserver;->subscribers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/sns/ScraperStatus$IStatusListener;

    .line 145
    invoke-interface {v1, p1}, Lcom/nuance/sns/ScraperStatus$IStatusListener;->onStatusChange(Lcom/nuance/sns/ScraperStatus;)V

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method private removeStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/sns/ScraperStatus$IStatusListener;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$StatusObserver;->subscribers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method
