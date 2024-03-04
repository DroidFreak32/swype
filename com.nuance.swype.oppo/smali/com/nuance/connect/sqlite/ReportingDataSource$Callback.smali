.class public interface abstract Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/ReportingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAggregate(ZLjava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V
.end method

.method public abstract onIndividual(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method
