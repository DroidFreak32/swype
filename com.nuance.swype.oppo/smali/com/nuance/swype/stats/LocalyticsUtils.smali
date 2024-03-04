.class public Lcom/nuance/swype/stats/LocalyticsUtils;
.super Ljava/lang/Object;
.source "LocalyticsUtils.java"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/nuance/swype/stats/LocalyticsUtils;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public open()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public tagEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public tagScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 40
    return-void
.end method

.method public upload()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
