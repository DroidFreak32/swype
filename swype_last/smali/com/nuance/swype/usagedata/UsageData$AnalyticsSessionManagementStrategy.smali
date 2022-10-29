.class public interface abstract Lcom/nuance/swype/usagedata/UsageData$AnalyticsSessionManagementStrategy;
.super Ljava/lang/Object;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnalyticsSessionManagementStrategy"
.end annotation


# virtual methods
.method public abstract canClose()Z
.end method

.method public abstract canOpen()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract markSessionClosed()V
.end method

.method public abstract markSessionOpened()V
.end method
