.class Lcom/localytics/android/AnalyticsHandler$16;
.super Ljava/lang/Object;
.source "AnalyticsHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/AnalyticsHandler;->getInstallationId()Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/AnalyticsHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;)V
    .registers 2

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$16;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/localytics/android/AnalyticsHandler$16;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$16;->this$0:Lcom/localytics/android/AnalyticsHandler;

    # getter for: Lcom/localytics/android/AnalyticsHandler;->mInstallId:Ljava/lang/String;
    invoke-static {v0}, Lcom/localytics/android/AnalyticsHandler;->access$1100(Lcom/localytics/android/AnalyticsHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
