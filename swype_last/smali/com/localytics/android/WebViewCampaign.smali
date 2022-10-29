.class abstract Lcom/localytics/android/WebViewCampaign;
.super Lcom/localytics/android/Campaign;
.source "WebViewCampaign.java"


# instance fields
.field protected mWebViewAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/localytics/android/Campaign;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWebViewAttributes()Ljava/util/Map;
    .registers 2
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

    .prologue
    .line 21
    iget-object v0, p0, Lcom/localytics/android/WebViewCampaign;->mWebViewAttributes:Ljava/util/Map;

    return-object v0
.end method
