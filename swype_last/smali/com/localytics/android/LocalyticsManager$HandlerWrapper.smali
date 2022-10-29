.class final Lcom/localytics/android/LocalyticsManager$HandlerWrapper;
.super Ljava/lang/Object;
.source "LocalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandlerWrapper"
.end annotation


# instance fields
.field analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

.field locationHandler:Lcom/localytics/android/LocationHandler;

.field manifestHandler:Lcom/localytics/android/ManifestHandler;

.field marketingHandler:Lcom/localytics/android/MarketingHandler;

.field profileHandler:Lcom/localytics/android/ProfileHandler;

.field final synthetic this$0:Lcom/localytics/android/LocalyticsManager;


# direct methods
.method private constructor <init>(Lcom/localytics/android/LocalyticsManager;Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/ProfileHandler;Lcom/localytics/android/ManifestHandler;Lcom/localytics/android/LocationHandler;)V
    .registers 7
    .param p2, "analyticsHandler"    # Lcom/localytics/android/AnalyticsHandler;
    .param p3, "marketingHandler"    # Lcom/localytics/android/MarketingHandler;
    .param p4, "profileHandler"    # Lcom/localytics/android/ProfileHandler;
    .param p5, "manifestHandler"    # Lcom/localytics/android/ManifestHandler;
    .param p6, "locationHandler"    # Lcom/localytics/android/LocationHandler;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->this$0:Lcom/localytics/android/LocalyticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    iput-object p2, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

    .line 1103
    iput-object p3, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->marketingHandler:Lcom/localytics/android/MarketingHandler;

    .line 1104
    iput-object p4, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->profileHandler:Lcom/localytics/android/ProfileHandler;

    .line 1105
    iput-object p5, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->manifestHandler:Lcom/localytics/android/ManifestHandler;

    .line 1106
    iput-object p6, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->locationHandler:Lcom/localytics/android/LocationHandler;

    .line 1107
    return-void
.end method

.method synthetic constructor <init>(Lcom/localytics/android/LocalyticsManager;Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/ProfileHandler;Lcom/localytics/android/ManifestHandler;Lcom/localytics/android/LocationHandler;Lcom/localytics/android/LocalyticsManager$1;)V
    .registers 8
    .param p1, "x0"    # Lcom/localytics/android/LocalyticsManager;
    .param p2, "x1"    # Lcom/localytics/android/AnalyticsHandler;
    .param p3, "x2"    # Lcom/localytics/android/MarketingHandler;
    .param p4, "x3"    # Lcom/localytics/android/ProfileHandler;
    .param p5, "x4"    # Lcom/localytics/android/ManifestHandler;
    .param p6, "x5"    # Lcom/localytics/android/LocationHandler;
    .param p7, "x6"    # Lcom/localytics/android/LocalyticsManager$1;

    .prologue
    .line 1088
    invoke-direct/range {p0 .. p6}, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;-><init>(Lcom/localytics/android/LocalyticsManager;Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/ProfileHandler;Lcom/localytics/android/ManifestHandler;Lcom/localytics/android/LocationHandler;)V

    return-void
.end method
