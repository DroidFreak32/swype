.class public Lcom/localytics/android/AnalyticsListenerAdapter;
.super Ljava/lang/Object;
.source "AnalyticsListenerAdapter.java"

# interfaces
.implements Lcom/localytics/android/AnalyticsListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .registers 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p3, "customerValueIncrease"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public localyticsSessionDidOpen(ZZZ)V
    .registers 4
    .param p1, "isFirst"    # Z
    .param p2, "isUpgrade"    # Z
    .param p3, "isResume"    # Z

    .prologue
    .line 20
    return-void
.end method

.method public localyticsSessionWillClose()V
    .registers 1

    .prologue
    .line 25
    return-void
.end method

.method public localyticsSessionWillOpen(ZZZ)V
    .registers 4
    .param p1, "isFirst"    # Z
    .param p2, "isUpgrade"    # Z
    .param p3, "isResume"    # Z

    .prologue
    .line 15
    return-void
.end method
