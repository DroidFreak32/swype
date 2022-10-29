.class interface abstract Lcom/localytics/android/ICreativeDownloadTask;
.super Ljava/lang/Object;
.source "ICreativeDownloadTask.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/ICreativeDownloadTask$Priority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/localytics/android/ICreativeDownloadTask;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# virtual methods
.method public abstract getCampaign()Lcom/localytics/android/MarketingMessage;
.end method

.method public abstract getPriority()Lcom/localytics/android/ICreativeDownloadTask$Priority;
.end method

.method public abstract getSequence()I
.end method

.method public abstract setPriority(Lcom/localytics/android/ICreativeDownloadTask$Priority;)V
.end method
