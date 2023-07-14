.class Lcom/localytics/android/LocationHandler$11;
.super Ljava/lang/Object;
.source "LocationHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationHandler;->getGeofencesToMonitor(DD)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/localytics/android/CircularRegion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationHandler;

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationHandler;DD)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/localytics/android/LocationHandler$11;->this$0:Lcom/localytics/android/LocationHandler;

    iput-wide p2, p0, Lcom/localytics/android/LocationHandler$11;->val$latitude:D

    iput-wide p4, p0, Lcom/localytics/android/LocationHandler$11;->val$longitude:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/localytics/android/LocationHandler$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/localytics/android/LocationHandler$11;->this$0:Lcom/localytics/android/LocationHandler;

    iget-wide v2, p0, Lcom/localytics/android/LocationHandler$11;->val$latitude:D

    iget-wide v4, p0, Lcom/localytics/android/LocationHandler$11;->val$longitude:D

    invoke-static {v0, v2, v3, v4, v5}, Lcom/localytics/android/LocationHandler;->access$400(Lcom/localytics/android/LocationHandler;DD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
