.class public interface abstract Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/stats/StatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionStatsScribe"
.end annotation


# virtual methods
.method public abstract mark()V
.end method

.method public abstract mark(I)V
.end method

.method public abstract mark(II)V
.end method

.method public abstract recordKeyboardSizeChange(Ljava/lang/String;)V
.end method

.method public abstract recordLanguageChange(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract trackDistanceSwyped(J)V
.end method
