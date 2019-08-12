.class public interface abstract Ltwitter4j/management/APIStatisticsMBean;
.super Ljava/lang/Object;
.source "APIStatisticsMBean.java"

# interfaces
.implements Ltwitter4j/management/InvocationStatistics;


# virtual methods
.method public abstract getInvocationStatistics()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Ltwitter4j/management/InvocationStatistics;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethodLevelSummariesAsString()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethodLevelSummary(Ljava/lang/String;)Ljava/lang/String;
.end method
