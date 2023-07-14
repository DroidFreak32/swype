.class interface abstract Lcom/nuance/swype/usagedata/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# virtual methods
.method public abstract endSession(Landroid/content/Context;)V
.end method

.method public abstract setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V
.end method

.method public abstract startSession(Landroid/content/Context;)V
.end method

.method public abstract tagEvent(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract tagScreen(Ljava/lang/String;)V
.end method
